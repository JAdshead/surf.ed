$ ->

  $starredTab   = $(".starred-tab");
  $postedTab    = $(".posted-tab");
  $answeredTab  = $(".answered-tab");
  $inviteTab    = $(".invite-tab");
  $editTab      = $(".edit-tab");

  urlTabParam = (param)->
    window.location.href = "#"+param

  showTab = ->
    href =  window.location.href
    if /starred/.exec(href)
      starredTabFunction();
    else if /posted/.exec(href)
      postedTabFunction();
    else if /answered/.exec(href)
      answeredTabFunction();
    else if /invite/.exec(href)
      inviteTabFunction();
    else if /edit/.exec(href)
      editTabFunction();


  activeTabFunc = (tab) ->
    $tab = tab
    $starredTab.removeClass "active" ;
    $postedTab.removeClass "active";
    $answeredTab.removeClass "active";
    $inviteTab.removeClass "active";
    $editTab.removeClass "active";
    $tab.addClass "active";


  hide = (id) ->
    $(id).hide()

  unhide = (id) ->
    if $(id).hasClass "hide"
      $(id).removeClass "hide" 
    $(id).show()

  hideAllAnswers = ->
    $.each([".starred-content",".posted-content" ,".answered-content", ".invite-content", ".edit-content"], 
      ( index, value ) ->
        hide value
    )


  starredTabFunction = () ->
    activeTabFunc($starredTab);
    hideAllAnswers();
    unhide(".starred-content");

  postedTabFunction = () ->
    activeTabFunc($postedTab);
    hideAllAnswers();
    unhide(".posted-content");

  answeredTabFunction = () ->
    activeTabFunc($answeredTab);
    hideAllAnswers();
    unhide(".answered-content");

  inviteTabFunction = () ->
    activeTabFunc($inviteTab);
    hideAllAnswers();
    unhide(".invite-content");

  editTabFunction = () ->
    activeTabFunc($editTab);
    hideAllAnswers();
    unhide(".edit-content");


  $starredTab.on "click", =>
    urlTabParam("starred");
    starredTabFunction();

  $postedTab.on "click", =>
    urlTabParam("posted");
    postedTabFunction();

  $answeredTab.on "click", =>
    urlTabParam("answered");
    answeredTabFunction();

  $inviteTab.on "click", =>
    urlTabParam("invite");
    inviteTabFunction();

  $editTab.on "click", =>
    urlTabParam("edit");
    editTabFunction();

  showTab()


