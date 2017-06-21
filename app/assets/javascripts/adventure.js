//event listener
$(() => {
  bindClickHandlers()
})

//pushState allows append of url
const bindClickHandlers = () => {
  $('.nav-links').on ('click', function(e){
    e.preventDefault();
    let id = ($(this).data('id'))
    // console.log($(this).data('id'));
    history.pushState(null, null, `/hikers/${id}/adventures`) //not working
    $.get(`/hikers/${id}/adventures.json`, adventures => {
      $('.main').html('<h1>All Adventures</h1>')
      console.log(adventures);
      adventures.forEach(adventure => {
        let newAdventure = new Adventure(adventure)
        let adventureHtml = newAdventure.formatIndex()
        $('.main').append(adventureHtml)
      })
    })
  })
  $(document).on('click', ".show-link", function(e) { //include formatShow after get
    e.preventDefault()
    let id = e.currentTarget.getAttribute('adventure') //not working

  })
}

// constructor function
function Adventure(adventure) {
  this.id = adventure.id
  this.title = adventure.title
}

// prototype function
Adventure.prototype.formatIndex = function() {
  let adventureHtml = `
    <a href="/adventures/${this.id}"  data-id="${this.id}" class="show-link"><p>${this.title}</p>
  `
  return adventureHtml
}

Adventure.prototype.formatShow = function() {
  let adventureHtml = `
    <h3>${this.title}</h3
  `
  return adventureHtml
}
