# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery -> 
  $('#images').sortable
    axis: 'y'
    handle: '.handle'
    update: -> 
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  $('#new_image').fileupload
    dataType: "script"
    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.submit()
      else
        alert "#{file.name} is not a gif, jpeg or png image file"
    start: (e) ->
      $('#upload-progress').show()
    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $('#upload-progress').find('.bar').css('width', progress + '%')
    stop: (e) ->
      $('#upload-progress').hide()
      $('#upload-progress').find('.bar').css('width', '0%')