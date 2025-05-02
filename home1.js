document.addEventListener('DOMContentLoaded', function() {
    // Carrousel pour la galerie produit
    const galleryImages = [
        '../docs/img/p.b.2.jpeg',
        '../docs/img/ph5.jpg',
       
        '../docs/img/bougix9.jpg',

       
        '../docs/img/p.b.21.jpeg',
        '../docs/img/bougix5.jpg'
        // Ajoutez d'autres images si nécessaire
    ];
    
    let currentImageIndex = 0;
    const mainGalleryImage = document.querySelector('.gallery-main img');
    
    function changeImage() {
        currentImageIndex = (currentImageIndex + 1) % galleryImages.length;
        mainGalleryImage.src = galleryImages[currentImageIndex];
        mainGalleryImage.alt = "Collection May Art " + (currentImageIndex + 1);
    }
    
    // Change d'image toutes les 3 secondes
    setInterval(changeImage, 3000);
    
    // Ajout d'interactivité aux miniatures
    const thumbnails = document.querySelectorAll('.gallery-thumb img');
    thumbnails.forEach((thumb, index) => {
        thumb.addEventListener('click', () => {
            mainGalleryImage.src = thumb.src;
            currentImageIndex = index;
        });
    });
});
// Smooth scroll pour les ancres
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
anchor.addEventListener('click', function(e) {
e.preventDefault();
document.querySelector(this.getAttribute('href')).scrollIntoView({
    behavior: 'smooth'
});
});
});

// Effet de parallaxe
window.addEventListener('scroll', function() {
    const homeSection = document.querySelector('.home');
    const scrollPosition = window.pageYOffset;
    homeSection.style.backgroundPositionY = scrollPosition * 0.5 + 'px';
});
// Animation au défilement
function animateOnScroll() {
const elements = document.querySelectorAll('.product-details, .product-gallery');

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
document.querySelectorAll('.product-details, .product-gallery').forEach(el => {
el.style.opacity = '0';
el.style.transform = 'translateY(20px)';
el.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
});

window.addEventListener('scroll', animateOnScroll);
// Trigger once on load
animateOnScroll();
