# require_tree .
#= require bootstrap.min

form_submit = (selector)->
  $(".#{selector} form").on 'submit', (e)->
    e.preventDefault()
    $this = $(this)
    $.post($this.attr('action'), $this.serialize()).done ->
      $(".#{selector} .alert-success").clone().appendTo(".#{selector}").show()
    .fail ->
      $(".#{selector} .alert-danger").clone().appendTo(".#{selector}").show()

form_submit('contact-us')
form_submit('scoop')
