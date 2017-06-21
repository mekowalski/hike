//hijack the navigation links
//not working correctly, hello not logged but counter is increasing on click
//cannot use fetch, use ajax
$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.nav-links').on ('click', (e) => {
    // debugger
    e.preventDefault()
    console.log('hello')
  })
}
