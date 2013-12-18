
$ ->

  $('.uploadBtn').on 'change', ->
    $('.uploadFile').value = this.value;

  $('.checkbox-box').on 'click', ->

    changeCheckBox("#boom-box")

    $('.checkbox-no').toggle();
    $('.checkbox-yes').toggle();

    $('.checkbox').removeClass "selected";

    if $('.checkbox-yes').is(':visible')
      $('.checkbox').addClass "selected";
      

  changeCheckBox = (elem) ->
    elem = $(elem)
    elem.prop('checked', !elem[0].checked)
