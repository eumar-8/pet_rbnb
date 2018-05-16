import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "sorry we dont have this pet",
      // text: "This is a great alert, isn't it?",
      icon: "error"
    })
  });

  document.querySelector(".search-form").addEventListener('submit', (event) => {
    const searchQuery = event.target[1].value;
    const categories = ["dog","dogs", "cat","cats", "elephant","elephants", "fish","fishes", "hamster","hamsters", "giraffe","giraffes", "monkey","monkeys","snake", "spider","spiders"];
    if (!categories.includes(searchQuery)) {
      event.preventDefault();
      swal({
        title: `Sorry, we don't have ${searchQuery}`,
        // text: "This is a great alert, isn't it?",
        icon: "error"
      })
    }
  });
}

export { bindSweetAlertButtonDemo };

