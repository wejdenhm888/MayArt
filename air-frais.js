document.addEventListener('DOMContentLoaded', () => {
    // Header
    const headerItems = document.querySelectorAll('header a, header p, header img');
    headerItems.forEach(item => {
        item.style.transition = 'all 0.3s ease';
        item.addEventListener('mouseover', () => {
            item.style.transform = 'scale(2.1)';
            item.style.textShadow = '1px 1px 5px rgba(0, 0, 0, 0.2)';
            item.style.cursor = 'pointer';
        });

        item.addEventListener('mouseout', () => {
            item.style.transform = 'scale(1)';
            item.style.textShadow = 'none';
        });
    });




    // Footer
    const footerLinks = document.querySelectorAll('.menu-footer p');
    footerLinks.forEach(link => {
        link.style.transition = 'all 0.3s ease';
        link.addEventListener('mouseover', () => {
            link.style.transform = 'scale(1.1)';
            link.style.textShadow = '1px 1px 5px rgba(0, 0, 0, 0.2)';
            link.style.cursor = 'pointer';
        });

        link.addEventListener('mouseout', () => {
            link.style.transform = 'scale(1)';
            link.style.textShadow = 'none';
        });
    });

    const subscribeButton = document.querySelector('.newsletter-box button');
    const emailInput = document.querySelector('.newsletter-box input[type="email"]');

    if (subscribeButton && emailInput) {
        subscribeButton.addEventListener('click', () => {
            const email = emailInput.value.trim();
            if (email) {
                console.log("Email abonné :", email);
                alert(`Merci pour votre abonnement : ${email}`);
                // Ici tu pourras envoyer l'email au serveur avec PHP plus tard
                emailInput.value = ""; // Réinitialise le champ
            } else {
                alert("Veuillez entrer une adresse e-mail valide.");
            }
        });

        // Effet sur hover via JS (en plus du CSS si tu veux)
        subscribeButton.addEventListener('mouseover', () => {
            subscribeButton.style.transform = 'scale(1.05)';
        });

        subscribeButton.addEventListener('mouseout', () => {
            subscribeButton.style.transform = 'scale(1)';
        });
    }

    const main = document.querySelector('.main');
    const template = document.getElementById('product-template');
    
    // Fonction pour ajouter une carte produit
    function ajouterProduit(nom, prix, imageUrl) {
      const clone = template.content.cloneNode(true);
      clone.querySelector('img').src = imageUrl;
      clone.querySelector('.product-name').textContent = nom;
      clone.querySelector('.product-price').textContent = prix;
    
      main.appendChild(clone);
    }

    
    

});
