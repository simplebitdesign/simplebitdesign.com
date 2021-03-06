Spinner = require 'spin.js'

opts =
  lines: 13
  length: 28
  width: 14
  radius: 42
  scale: 0.1
  corners: 1
  color: '#FFF'
  opacity: 0.25
  rotate: 0
  direction: 1
  speed: 1
  trail: 60
  fps: 20
  zIndex: 2e9
  className: 'spinner'
  top: '50%'
  left: false
  shadow: false
  hwaccel: true
  position: 'absolute'

spinner = new Spinner(opts).spin()
$contactForm = $('#contactform')
$fields = $contactForm.find('input', 'textarea')

disableForm = ->
  $fields.attr 'readonly', true
  $contactForm
    .find('button[type="submit"]')
    .addClass('has-icon')
    .attr('disabled', true)
    .text('Sending...')
    .append spinner.el

$contactForm.submit (e) ->
  e.preventDefault()
  disableForm()

  $form = $(this)
  $.post($form.attr('action'), $form.serialize()).then ->
    $('<div class="c-notice c-notice--success c-notice--fill c-notice--large">Message sent! We\'ll be in touch soon.</div>').insertBefore $contactForm
    $contactForm.remove()