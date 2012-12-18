$( -> 
  $('ul#edit-item-nav li a').click( (e) -> 
    e.preventDefault()
    $(this).tab('show')
  )

  from = new Date()
  to = new Date(from.getTime() + 1000 * 60 * 60 * 24 * 7)


  $('#datepicker-calendar').DatePicker({
    inline: true,
    date: [from, to],
    starts: 1, # first day of the week is monday
    calendars: 3,
    mode: 'range',
    current: new Date(from.getFullYear(), from.getMonth() + 1, 1),
    onChange: (dates,el) ->
      $('#range').val(
        dates[0].getDate()+' '+dates[0].getMonthName(true)+', '+
        dates[0].getFullYear()+' - '+
        dates[1].getDate()+' '+dates[1].getMonthName(true)+', '+
        dates[1].getFullYear())
  })

  # initialize the special date dropdown field
  $('#range').val(from.getDate()+' '+from.getMonthName(true)+', '+from.getFullYear()+' - '+ to.getDate()+' '+to.getMonthName(true)+', '+to.getFullYear())

  # bind a click handler to the date display field, which when clicked
  # toggles the date picker calendar, flips the up/down indicator arrow,
  # and keeps the borders looking pretty
  $('#range').bind('click', ->
    $('#datepicker-calendar').toggle()
    return false
  )

  # global click handler to hide the widget calendar when it's open, and
  # some other part of the document is clicked.  Note that this works best
  # defined out here rather than built in to the datepicker core because this
  # particular example is actually an 'inline' datepicker which is displayed
  # by an external event, unlike a non-inline datepicker which is automatically
  # displayed/hidden by clicks within/without the datepicker element and datepicker respectively
  $('html, #datepicker-calendar .btn').click( ->
    if($('#datepicker-calendar').is(":visible"))
      $('#datepicker-calendar').hide()
  )

  # stop the click propagation when clicking on the calendar element
  # so that we don't close it
  $('#datepicker-calendar').click( (event) ->
    event.stopPropagation();
  )
)

