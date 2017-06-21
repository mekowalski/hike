//cannot use fetch, use ajax
$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    e.preventDefault()
    // this is working, returning objs in console!!
    $.get('hikers/:id/adventures.json', adventures => {
      console.log(adventures);
    })
  })
}
