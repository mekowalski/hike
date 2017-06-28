//event listener
$(() => {
  advBindClickHandlers()
})

const advBindClickHandlers = () => {
  $('#all-adventures').on ('click', function(e) {
    e.preventDefault()
    let id = ($(this).data('id'))
    history.pushState(null, null, `/hikers/${id}/adventures`)
    $.get(`/hikers/${id}/adventures.json`, adventures => {
      $('.main').html('<h1>All Adventures</h1>')
      adventures.forEach(adventure => {
        let newAdventure = new Adventure(adventure)
        let adventureHtml = newAdventure.formatIndex()
        $('.main').append(adventureHtml)
      })
    })
  })
  // $(document).on('click', ".show-link", function(e) { //not sure how to build this
  //   e.preventDefault()
  //   let id = ($(this).data('id'))
  // })
}

// constructor function
function Adventure(adventure) {
  this.id = adventure.id
  this.title = adventure.title
}

// prototype function
Adventure.prototype.formatIndex = function() {
  let adventureHtml = `
    <a href="/adventures/${this.id}"  data-id="${this.id}"
    class="show-link"><p>${this.title}</p>
  `
  return adventureHtml
}

Adventure.prototype.formatShow = function() {
  let adventureHtml = `
    <h3>${this.title}</h3>
  `
  return adventureHtml
}
