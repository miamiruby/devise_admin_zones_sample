# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$(document).ready ->
  $('.delete-post').on 'ajax:complete', (e) ->
    #console.log('After ajax call fires print this')
    #console.log(e)
    $(e.currentTarget).parent().parent().hide()
    return
  return
