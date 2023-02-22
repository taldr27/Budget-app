// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'flowbite'

const closeButton = document.querySelector('[data-dismiss-target]');

if(closeButton) {
  closeButton.addEventListener('click', () => {
    const target = document.querySelector(closeButton.dataset.dismissTarget);
    target.classList.add('invisible');
  });
}
