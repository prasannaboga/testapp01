# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on "turbolinks:load", ->
  $('.add-user-meta-fields').on 'ajax:success', (event) ->
    [data, status, xhr] = event.detail
    $('.meta-fields').append(xhr.responseText)
