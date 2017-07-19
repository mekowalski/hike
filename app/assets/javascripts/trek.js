// //event listener
// $(() => {
//   trekBindClickHandlers()
//   showTrekHandler()
// })
//
// const trekBindClickHandlers = () => {
//   $('#all-treks').on ('click', function(e) {
//     e.preventDefault()
//     history.pushState(null, null, `/treks`)
//     $.get(`/treks.json`, treks => {
//       $('.main').html('<h1>All Treks</h1>')
//       treks.forEach(trek => {
//         let newTrek = new Trek(trek)
//         let TrekHtml = newTrek.formatIndex()
//         $('.main').append(TrekHtml)
//       })
//       showTrekHandler()
//     })
//   })
//   $('#new_trek').on ('submit', function(e) {
//     e.preventDefault()
//     e.stopPropagation()
//     let url = $(this).context.action
//     let data = $(this).serialize()
//     $.post(url, data, function(trek) {
//       $('.main').html(trek)
//       createAndShowTrek(trek)
//       // one instance, created trek with assciation twice
//       // another instance, created trek with assocation once
//     })
//   })
// }
//
// const showTrekHandler = () => {
//   $('.trek-show').on ('click', e => {
//     e.preventDefault()
//     let trekID = e.currentTarget.getAttribute("data-id")
//     $.get('/treks/' + trekID + '.json', trek => {
//       $('.main').html('')
//       createAndShowTrek(trek)
//     })
//   })
// }
//
// //constructor function
// function Trek(trek) {
//   this.id = trek.id
//   this.name = trek.name
//   this.state = trek.state
//   this.elevation = trek.elevation
//   this.level = trek.level
//   this.hiker_id = trek.hiker_id
//   this.adventure_id = trek.adventure_id
//   this.adventure_title = trek.adventure.title
// }
//
// // prototype function
// Trek.prototype.formatIndex = function() {
//   let trekHtml = `
//     <a href="/treks/${this.id}"  data-id="${this.id}"
//     class="trek-show"><p>${this.name}</p>
//   `
//   return trekHtml
// }
//
// Trek.prototype.formatShow = function() {
//   let trekHtml = `
//     <h3>${this.name}</h3>
//     <p>State: ${this.state}</p>
//     <p>Elevation: ${this.elevation}</p>
//     <p>Level of Difficulty: ${this.level}</p>
//     <p>Adventure: ${this.adventure_title}</p>
//   `
//   return trekHtml
// }
//
// function createAndShowTrek(trek) {
//   let newTrek = new Trek(trek)
//   let TrekHtml = newTrek.formatShow()
//   $('.main').append(TrekHtml)
// }

$(function() {
  $('a.div.main-column', document).on('click', function(e) {
    e.preventDefault()
    alert('this happened!')

    // $.getJSON(this.href, function(json){

    })
  })
