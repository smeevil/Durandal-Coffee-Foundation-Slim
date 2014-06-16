define (require) ->
  ko = require('knockout')
  kom = require('knockout-mapping/knockout.mapping')

  ko.mapping = kom

  activate: () ->

    buildIpData= (data) ->
      @displayName = "Example ip api"
      @description = "This is your ip information"
      @ip = ko.mapping.fromJS(data)
      console.log "IP : #{@ip}"

    $.ajax
      async: true,
      url: 'http://ip-api.com/json',
      type: 'GET',
      dataType: 'json',

    .done (data)->
      buildIpData(data)

    .fail (msg)->
      console.log "Error: Could not load data."

