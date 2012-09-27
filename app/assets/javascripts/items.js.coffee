$( -> 
  $('ul#edit-item-nav li a').click( (e) -> 
    e.preventDefault()
    $(this).tab('show')
  )
)

