
$ ->

  $('.uploadBtn').on 'change', ->
    $('.uploadFile').value = this.value;

  $('.checkbox-box').on 'click', ->
    console.log "check"
    $('.checkbox-no').toggle();
    $('.checkbox-yes').toggle();
    $('.checkbox').removeClass "selected";
    if $('.checkbox-yes').is(':visible')
      $('.checkbox').addClass "selected";

  $(".actions.form-button.submit")