
// Objet pour stocker la sélection
let productSelection = {
  size: '',
  quantity: 1
};

// Fonction pour choisir/déchoisir une option
function choisirOption(element) {
  const selectedSize = element.getAttribute('data-size');
  
  // Si la taille cliquée est déjà sélectionnée
  if (productSelection.size === selectedSize) {
    // On désélectionne
    productSelection.size = '';
    element.classList.remove('choisie');
  } else {
    // On désélectionne toutes les options d'abord
    document.querySelectorAll('.option_button').forEach(opt => {
      opt.classList.remove('choisie');
    });
    
    // On sélectionne la nouvelle option
    productSelection.size = selectedSize;
    element.classList.add('choisie');
  }
}

// Fonction pour gérer la quantité
function handleClick(event) {
  const button = event.currentTarget;
  const rect = button.getBoundingClientRect();
  const clickX = event.clientX - rect.left;
  const buttonWidth = rect.width;
  const minQuantity = 1;
  const maxQuantity = 9;

  if (clickX < buttonWidth / 2) {
    // Clic gauche - décrémenter
    if (productSelection.quantity > minQuantity) {
      productSelection.quantity--;
    }
  } else {
    // Clic droit - incrémenter
    if (productSelection.quantity < maxQuantity) {
      productSelection.quantity++;
    }
  }

  document.getElementById('quantity-display').textContent = productSelection.quantity;
}

// Fonction pour ajouter au panier
/*function addToCart() {
  // Vérifier qu'une taille est bien sélectionnée
  if (!productSelection.size) {
    alert('Veuillez choisir une taille avant d\'ajouter au panier.');
    return;
  }
  
  // Afficher la confirmation
  alert(`Produit ajouté au panier ! Taille: ${productSelection.size}, Quantité: ${productSelection.quantity}`);
  
  // Optionnel: réinitialiser la sélection
  resetSelection();
}*/

// Fonction pour réinitialiser la sélection
function resetSelection() {
  // Réinitialiser l'objet de sélection
  productSelection = {
    size: '',
    quantity: 1
  };
  
  // Réinitialiser l'interface
  document.querySelectorAll('.option_button').forEach(btn => {
    btn.classList.remove('choisie');
  });
  document.getElementById('quantity-display').textContent = '1';
}

// Initialisation des écouteurs d'événements
document.addEventListener('DOMContentLoaded', function() {
  // Pour les boutons de taille
  document.querySelectorAll('.option_button').forEach(button => {
    button.addEventListener('click', function() {
      choisirOption(this);
    });
  });
  
  // Pour le bouton de quantité
  const quantityButton = document.querySelector('.quantity-button');
  if (quantityButton) {
    quantityButton.addEventListener('click', handleClick);
  }
  
  // Pour le bouton d'ajout au panier
  const addToCartButton = document.querySelector('.add-to-cart-button');
  if (addToCartButton) {
    addToCartButton.addEventListener('click', addToCart);
  }
});


































