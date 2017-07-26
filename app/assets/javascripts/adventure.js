// //event listener
// $(() => {
//   advBindClickHandlers()
// })
//
// const advBindClickHandlers = () => {
//   $('#all-adventures').on ('click', function(e) {
//     e.preventDefault()
//     let id = ($(this).data('id'))
//     history.pushState(null, null, `/hikers/${id}/adventures`)
//     $.get(`/hikers/${id}/adventures.json`, adventures => {
//       $('.main').html('<h1>All Adventures</h1>')
//       adventures.forEach(adventure => {
//         let newAdventure = new Adventure(adventure)
//         let adventureHtml = newAdventure.formatIndex()
//         $('.main').append(adventureHtml)
//       })
//     })
//   })
//   $(document).on('click', ".show-link", function(e) {
//     e.preventDefault()
//     let id = $(this).attr('data-id')
//     $.get(`/hikers/${id}/adventures/${id}.json`)
//       .done((data) => {
//       $('.main').html('')
//       let newAdventure = new Adventure(data)
//       let adventureHtml = newAdventure.formatShow()
//       $('.main').append(adventureHtml)
//     })
//   })
// }
//
// // constructor function
// function Adventure(adventure) {
//   this.id = adventure.id
//   this.title = adventure.title
//   this.treks = adventure.treks
// }
//
// // prototype function
// Adventure.prototype.formatIndex = function() {
//   let adventureHtml = `
//     <p><a href="/adventures/${this.id}"  data-id="${this.id}"
//     class="show-link">${this.title}</a> - ${this.treks.length} trek(s) </p>
//   `
//   return adventureHtml
// }
//
// Adventure.prototype.formatShow = function() {
//   let adventureHtml = `
//     <h3>${this.title}</h3>
//     ${this.treks.map(trek => `<p><a href ="/treks/${trek.id}"</a>${trek.name}</p>`)}
//   `
//   return adventureHtml
// }

$(function() {
  $('a.show-adventure', document).on('click', function(e) {
    e.preventDefault()
    $.getJSON(this.href, function(json){
      // debugger
      $('div.main-column').html('')
      var addTrekURL = `/adventures/${json.id}/treks/new`
      $('div.main-column').html(
        `<h1>${json.title}</h1>
        <div id=caroga></div>
        <h2><a href=${addTrekURL} class=adv-stuff>Add Trek</a></h2>`)
      bindCreateTrek()
    })
  })
  bindCreateAdventure()
})

const bindCreateAdventure = () => {
  $('a.create-adventure').on('click', function(e) {
    e.preventDefault()
    $.get(this.href, function(response) {
      var adventureForm = $('div.text-right', response).html()
      $('.main-column').html(adventureForm)
    })
  })
}

const bindCreateTrek = () => {
  $('a.adv-stuff').on('click', function(e) {
    e.preventDefault()
    $.get(this.href, function(response) {
      var trekForm = $('form.new_trek', response)
      $('#caroga').html(trekForm)
    })
  })
}

const bindIndexTreks = () => { //want to dispplay index of treks associated before the 'Add Trek' link
  $('a.show-adventure').on('click', function(e) { //not correctly 'grabbing' the tag
    e.preventDefault()
    alert('woohoo, i did that correctly')
  })
}
