//hijack the navigation links
$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    e.preventDefault()
    console.log('hello')
  })
}
