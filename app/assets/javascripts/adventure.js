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
    //^^ this line creates issues, how to separate 2 ids, one for adventure & trek each
      .done((data) => {
      console.log(data);
      $('.main').html('')
      let newAdventure = new Adventure(data)
      let adventureHtml = newAdventure.formatShow()
      $('.main').append(adventureHtml)
    })
  })
}

// constructor function
function Adventure(adventure) {
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
    ${this.treks.map(trek => `<p><a href ="/treks/${trek.id}"</a>${trek.name}</p>`)}
  `
  //all treks is indexed, some links work correctly, some redirect incorrectly, some do not work at all
  //getting 404 on some links, logging XHR finish on some links, logging object on other links
  //no consistency, not sure how to debug
  return adventureHtml
}
