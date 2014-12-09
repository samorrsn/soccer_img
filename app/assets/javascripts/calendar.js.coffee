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
      showEventDetails(event);

    

updateEvent = (the_event) ->
  $.update "./events/" + the_event.id,
    event:
      title: the_event.title,
      starts_at: "" + moment(the_event.start).format('YYYY-MM-DD hh:mm'),
      ends_at: "" + moment(the_event.end).format('YYYY-MM-DD hh:mm'),
      description: the_event.description

showEventDetails = (the_event) ->
  $("#modalTitle").html the_event.title
  $("#startTime").html moment(event.start).format('MMM Do h:mm A')
  $("#endTime").html moment(event.end).format('MMM Do h:mm A')
  $("#eventDescription").html the_event.description
  $("#eventFooter").html '<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'
  $("#eventFooter").append  "<a class='btn btn-info' data-remote='true' id='test' href='./events/#{the_event.id}/edit'>Edit Event</a>"
  $("#eventFooter").append  "<a class='btn btn-danger' data-confirm='Are you sure?' data-method='delete' href='./events/#{the_event.id}' rel='nofollow'>Delete Event</a>"
  $("#fullCalModal").modal()
  
