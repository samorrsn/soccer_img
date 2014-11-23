$(document).ready ->
  $('#calendar').fullCalendar
    editable: true,
    header:
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    defaultView: 'month',
    height: 500,
    slotMinutes: 30,


    eventSources: [{
      url: './events',
    }],

    timeFormat: '': 'h(:mm)t',
    dragOpacity: "0.5"

    eventDrop: (event, dayDelta, minuteDelta, allDay, revertFunc) ->
      updateEvent(event);

    eventResize: (event, dayDelta, minuteDelta, revertFunc) ->
      updateEvent(event);

    eventClick: (event, jsEvent, view) ->
      $("#modalTitle").html event.title
      $("#startTime").html moment(event.start).format('MMM Do h:mm A')
      $("#endTime").html moment(event.end).format('MMM Do h:mm A')
      $("#eventDescription").html event.description
      $("#fullCalModal").modal()
      false  if event.url

       
    

updateEvent = (the_event) ->
  $.update "/events/" + the_event.id,
    event:
      title: the_event.title,
      starts_at: "" + the_event.start,
      ends_at: "" + the_event.end,
      description: the_event.description




  
