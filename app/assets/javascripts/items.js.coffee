$( -> 
  $('ul#edit-item-nav li a').click( (e) -> 
    e.preventDefault()
    $(this).tab('show')
  )

  from = new Date()
  to = new Date(from.getTime() + 1000 * 60 * 60 * 24 * 7)

  picker_from = $('#checkin').pickadate({
    firstDay: 1
    onSelect: ->
      fromDate = createDateArray( this.getDate( 'yyyy-mm-dd' ) )
      picker_to.data( 'pickadate' ).setDateLimit( fromDate )
  })

  picker_to = $('#checkout').pickadate({
    firstDay: 1
    onSelect: ->
      toDate = createDateArray( this.getDate( 'yyyy-mm-dd' ) )
      picker_from.data( 'pickadate' ).setDateLimit( toDate, 1 )
  })

  createDateArray = ( date ) ->
    date.split( '-' ).map( ( value ) -> +value )
)

