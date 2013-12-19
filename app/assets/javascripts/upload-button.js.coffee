
$ ->

  $('.uploadBtn').on 'change', ->
    $('.uploadFile').value = this.value;

  $('.checkbox-box').on 'click', ->

    changeCheckBox("#boom-box");
    
    $('.checkbox-no').toggle();
    $('.checkbox-yes').toggle();

    $('.checkbox').removeClass "selected";

    if $('.checkbox-yes').is(':visible')
      $('.checkbox').addClass "selected";
      
  

  changeCheckBox = (elem) ->
    elem = $(elem)
    elem.prop('checked', !elem[0].checked)


  checkBoxCheck = (elem) ->
    elem = $(elem)
    if elem.prop('checked') == true
      $('.checkbox-no').toggle();
      $('.checkbox-yes').toggle();

  checkBoxCheck("#boom-box");