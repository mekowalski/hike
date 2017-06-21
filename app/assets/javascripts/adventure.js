//cannot use fetch, use ajax
$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    e.preventDefault()
    // this is working, returning objs in console!!
    $.get('hikers/:id/adventures.json', adventures => {
      $('#main').html('')
      adventures.forEach(adventure => {
        // console.log(adventure)
        let newAdventure = new Adventure(adventure)
        console.log(newAdventure)
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
Adventure.prototype.formatIndex = () => {
  let adventureHtml = `
    <h1>${this.title}</h1>
  `
  return adventureHtml
}
