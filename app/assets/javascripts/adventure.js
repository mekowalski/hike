$(function() {
  bindIndexTreks()
  bindShowTrek()
  $('a.show-adventure', document).on('click', function(e) {
    e.preventDefault()
    $.getJSON(this.href, function(json){
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
      bindCreateTrekForm()
    })
  })
}

const bindCreateTrekForm = () => {
  $('#new_trek').on('submit', function(e) {
    e.preventDefault()
    var id = parseInt($(this).attr('action').split('/')[2])
    $.post(`/adventures/${id}/treks`, $(this).serialize(), function(data) {
      var trekName = '<h2>Name: ' + data.name + '</h2>'
      var trekState = '<h2>State: ' + data.state + '</h2>'
      var trekElevation = '<h2>Elevation: ' + data.elevation + ' feet</h2>'
      var trekLevel = '<h2>Difficulty Level: ' + data.level + '</h2>'
      var newTrek = trekName + trekState + trekElevation + trekLevel
      $('#caroga').html(newTrek)
    })
  })
}

const bindIndexTreks = () => {
  $('a.adv-link').on('click', function(e) {
    e.preventDefault()
    let id = $(this).data('id')
    $.get(`/adventures/${id}/treks.json`, function(data) {
      $('.index').html("")
      data.forEach(function(trek){
        var adventureId = trek.adventure.id
        var trekIndex = "<p><a data-adventure-id='"+ adventureId +"' data-id='"+ trek.id +"' class='show-trek' href='/adventures/" + adventureId + "/treks/" + trek.id + "'>" + trek.name + "</a></p>"
        $('.index').append(trekIndex)
      })
    })
  })
}

const bindShowTrek = () => {
  $(document).on('click', 'a.show-trek', function(e) {
    e.preventDefault()
    let adventureId = $(this).data('adventureId')
    let id = $(this).data('id')
    $.get(`/adventures/${adventureId}/treks/${id}.json`, function(data) {
      var trekName = '<h2>Name: ' + data.name + '</h2>'
      var trekState = '<h2>State: ' + data.state + '</h2>'
      var trekElevation = '<h2>Elevation: ' + data.elevation + ' feet</h2>'
      var trekLevel = '<h2>Difficulty Level: ' + data.level + '</h2>'
      var newTrek = trekName + trekState + trekElevation + trekLevel
      $('.index').html(newTrek)
    })
  })
}
