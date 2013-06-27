$('a.delete_entry').live('click',  function(){
  _event = $(this).data('event_id');
  _target = $(this).data('id');
  $('#delete_confirm_modal .primary').attr('href',  '/admin/events/' + _event + '/entries/' + _target);
});

