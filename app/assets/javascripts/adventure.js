//event listener
$(() => {
  bindClickHandlers()
  trekBindClickHandlers()
})

//pushState allows append of url
const bindClickHandlers = () => {
  $('.all-adventures').on ('click', function(e) {
    e.preventDefault()
    let id = ($(this).data('id'))
    history.pushState(null, null, `/hikers/${id}/adventures`)
    $.get(`/hikers/${id}/adventures.json`, adventures => {
      $('.main').html('<h1>All Adventures</h1>')
      // console.log(adventures);
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

const trekBindClickHandlers = () => {
  $('.all-treks').on ('click', function(e) {
    e.preventDefault()
    let id = ($(this).data('id'))
    history.pushState(null, null, `/hikers/${id}/treks`)
    $.get(`/hikers/${id}/treks.json`, treks => {
      $('.main').html('<h1>All Treks</h1>')
      // console.log(treks);
      treks.forEach(trek => {
        let newTrek = new Trek(trek)
        let TrekHtml = newTrek.formatIndex()
        $('.main').append(TrekHtml)
      })
    })
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
