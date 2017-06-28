//event listener
$(() => {
  trekBindClickHandlers()
})

const trekBindClickHandlers = () => {
  $('#all-treks').on ('click', function(e) {
    e.preventDefault()
    let id = ($(this).data('id')) //here id = 6, which error suggests id=6 not found, 404
    history.pushState(null, null, `/hikers/${id}/treks/${id}`) //not working
    // debugger
    $.get(`/hikers/${id}/treks/${id}.json`, treks => { //not working, 404 error
      // debugger
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

//constructor function
function Trek(trek) {
  this.id = trek.id
  this.name = trek.name
  this.state = trek.state
  this.elevation = trek.elevation
  this.level = trek.level
  this.hiker_id = trek.hiker_id
  this.adventure_id = trek.adventure_id
}

// prototype function
Trek.prototype.formatIndex = function() {
  let trekHtml = `
    <a href="/treks/${this.id}"  data-id="${this.id}"
    class="show-link"><p>${this.name}</p>
  `
  return trekHtml
}

Trek.prototype.formatShow = function() {
  let trekHtml = `
    <h3>${this.name}</h3>
    <p>${this.state}</p>
    <p>${this.elevation}</p>
    <p>${this.level}</p>
    <p>${this.hiker_id}</p>
    <p>${this.adventure_id}</p>
  `
  return trekHtml
}
