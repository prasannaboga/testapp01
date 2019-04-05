
$(document).on "turbolinks:load", ->
  $('.dynamic-background-color').on 'ajax:success', (event) ->
    $('#link-dynamic-css').attr('href', "/dynamic_css.css?id=#{new Date().getMilliseconds()}")


