document.addEventListener('DOMContentLoaded', function() {
    // 1. Animation des catégories au survol
    const categoryItems = document.querySelectorAll('.category-item');
    categoryItems.forEach(item => {
        item.addEventListener('mouseenter', function() {
            this.style.transform = 'translateY(-10px)';
            this.style.boxShadow = '0 15px 30px rgba(0,0,0,0.2)';
        });
        item.addEventListener('mouseleave', function() {
            this.style.transform = 'translateY(0)';
            this.style.boxShadow = '0 4px 8px rgba(0,0,0,0.1)';
        });
    });

    // 2. Galerie d'images avec lightbox
    const galleryItems = document.querySelectorAll('.gallery-item');
    galleryItems.forEach(item => {
        item.addEventListener('click', function() {
            const imgSrc = this.querySelector('img').src;
            const lightbox = document.createElement('div');
            lightbox.style.position = 'fixed';
            lightbox.style.top = '0';
            lightbox.style.left = '0';
            lightbox.style.width = '100%';
            lightbox.style.height = '100%';
            lightbox.style.backgroundColor = 'rgba(0,0,0,0.9)';
            lightbox.style.display = 'flex';
            lightbox.style.justifyContent = 'center';
            lightbox.style.alignItems = 'center';
            lightbox.style.zIndex = '1000';
            lightbox.style.cursor = 'pointer';
            
            const img = document.createElement('img');
            img.src = imgSrc;
            img.style.maxHeight = '90%';
            img.style.maxWidth = '90%';
            img.style.objectFit = 'contain';
            
            lightbox.appendChild(img);
            document.body.appendChild(lightbox);
            
            lightbox.addEventListener('click', function() {
                document.body.removeChild(lightbox);
            });
        });
    });

    // 3. Validation du formulaire de newsletter
    const newsletterForm = document.querySelector('.newsletter-container');
    const emailInput = document.querySelector('.newsletter-input');
    const subscribeBtn = document.querySelector('.subscribe-button');
    
    subscribeBtn.addEventListener('click', function(e) {
        e.preventDefault();
        const email = emailInput.value;
        
        if (!email) {
            alert('Veuillez entrer votre adresse email');
            return;
        }
        
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
            alert('Veuillez entrer une adresse email valide');
            return;
        }
        
        // Ici vous pourriez ajouter une requête AJAX pour envoyer l'email
        alert('Merci pour votre inscription à notre newsletter!');
        emailInput.value = '';
    });

    // 4. Animation au défilement
    function animateOnScroll() {
        const elements = document.querySelectorAll('.categories-section, .custom-section, .social-section');
        
        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.3;
            
            if (elementPosition < screenPosition) {
                element.style.opacity = '1';
                element.style.transform = 'translateY(0)';
            }
        });
    }

    // Initial state
    document.querySelectorAll('.categories-section, .custom-section, .social-section').forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });

    window.addEventListener('scroll', animateOnScroll);
    animateOnScroll();

    // 5. Menu mobile (pour les petits écrans)
    function setupMobileMenu() {
        const navLinks = document.querySelector('.nav-links');
        const menuToggle = document.createElement('div');
        menuToggle.innerHTML = '<i class="fas fa-bars"></i>';
        menuToggle.style.fontSize = '24px';
        menuToggle.style.cursor = 'pointer';
        menuToggle.style.display = 'none';
        menuToggle.style.padding = '10px';
        
        const navContainer = document.querySelector('.nav-container');
        navContainer.appendChild(menuToggle);
        
        function toggleMenu() {
            if (window.innerWidth <= 768) {
                if (navLinks.style.display === 'flex') {
                    navLinks.style.display = 'none';
                    menuToggle.innerHTML = '<i class="fas fa-bars"></i>';
                } else {
                    navLinks.style.display = 'flex';
                    navLinks.style.flexDirection = 'column';
                    navLinks.style.position = 'absolute';
                    navLinks.style.top = '100%';
                    navLinks.style.right = '0';
                    navLinks.style.backgroundColor = '#fad6ce';
                    navLinks.style.padding = '20px';
                    navLinks.style.borderRadius = '0 0 0 8px';
                    navLinks.style.boxShadow = '0 4px 6px rgba(0,0,0,0.1)';
                    menuToggle.innerHTML = '<i class="fas fa-times"></i>';
                }
            }
        }
        
        menuToggle.addEventListener('click', toggleMenu);
        
        function checkScreenSize() {
            if (window.innerWidth <= 768) {
                navLinks.style.display = 'none';
                menuToggle.style.display = 'block';
            } else {
                navLinks.style.display = 'flex';
                menuToggle.style.display = 'none';
            }
        }
        
        window.addEventListener('resize', checkScreenSize);
        checkScreenSize();
    }
    
    setupMobileMenu();

    // 6. Compteur de produits par catégorie (simulé)
    const categoryCounts = {
        'Bougies': 12,
        'sable': 8,
        'parfum d\'ambiance': 15,
        'bouquet parfumé': 6,
        'bombe de bain': 9,
        'autre': 5
    };
    
    categoryItems.forEach(item => {
        const categoryName = item.querySelector('.category-name').textContent.trim();
        const count = categoryCounts[categoryName] || 0;
        const countBadge = document.createElement('span');
        countBadge.textContent = `${count} produits`;
        countBadge.style.display = 'block';
        countBadge.style.marginTop = '10px';
        countBadge.style.fontSize = '0.9rem';
        countBadge.style.color = '#666';
        item.querySelector('.category-name').after(countBadge);
    });
});