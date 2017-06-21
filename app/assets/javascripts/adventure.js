//cannot use fetch, use ajax

//event listener
$(() => {
  bindClickHandlers()
})

//pushState allows append of url
const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    e.preventDefault()
    history.pushState(null, null, "/hikers/:hiker_id/adventures")
    $.get('hikers/:hiker_id/adventures.json', adventures => {
      $('#main').html('')
      adventures.forEach(adventure => {
        let newAdventure = new Adventure(adventure)
        let adventureHtml = newAdventure.formatIndex()
        $('#main').append(adventureHtml)
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
    <a href="/adventuress/${this.id}"><h1>${this.title}</h1>
  `
  return adventureHtml
}
