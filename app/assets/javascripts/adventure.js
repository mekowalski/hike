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
  $(document).on('click', ".show-link", function(e) {
    e.preventDefault()
    let id = $(this).attr('data-id')
    $.get(`/hikers/${id}/adventures/${id}.json`)
      .done((data) => {
        console.log(data);
        $('.main').html('')
        let newAdventure = new Adventure(data)
        let adventureHtml = newAdventure.formatShow()
        $('.main').append(adventureHtml)
      })
  })

  // $(document).on('click', ".show-link", function(e) { //not allowing specific link to show
  //   e.preventDefault()
  //   let id = ($(this).data('id'))
  // })  //show specific adventure, preventDefault()
}

// constructor function
function Adventure(adventure) {
  // console.log(adventure.treks.length);
  this.id = adventure.id
  this.title = adventure.title
  this.treks = adventure.treks
}

// prototype function
Adventure.prototype.formatIndex = function() {
  let adventureHtml = `
    <p><a href="/adventures/${this.id}"  data-id="${this.id}"
    class="show-link">${this.title}</a> - ${this.treks.length} trek(s) </p>
  `
  return adventureHtml
}

Adventure.prototype.formatShow = function() {
  let adventureHtml = `
    <h3>${this.title}</h3>
    ${this.treks.map(trek => `<p>${trek.name}</p>`)}
  `
  return adventureHtml
}
