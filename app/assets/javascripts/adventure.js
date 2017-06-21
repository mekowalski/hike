//event listener
$(() => {
  bindClickHandlers()
})

//pushState allows append of url
const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    e.preventDefault();
    var url = e.target.href;
    history.pushState(null, null, url)
    $.get(url, adventures => {
      $('#main').html('')
      $(adventures).each(adventure => {
        let newAdventure = new Adventure(adventure)
        let adventureHtml = newAdventure.formatIndex()
        $('#main').append(adventureHtml)
      })
    })
  })
  $(document).on('click', ".show-link", function(e) {
    e.preventDefault()
    console.log(e.currentTarget);
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
    <a href="/adventuress/${this.id}" class="show-link"><h1>${this.title}</h1>
  `
  return adventureHtml
}
