const carousel = document.querySelector('.carousel');
const images = carousel.querySelectorAll('img');

let currentIndex = 0;

function showImage(index) {
    carousel.style.transform = `translateX(-${index * 100}%)`;
}

function nextImage() {
    currentIndex = (currentIndex + 1) % images.length;
    showImage(currentIndex);
}

function prevImage() {
    currentIndex = (currentIndex - 1 + images.length) % images.length;
    showImage(currentIndex);
}

setInterval(nextImage, 5000); // Change image every 5 seconds

showImage(currentIndex);
