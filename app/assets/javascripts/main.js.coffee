
$ ->
  $('input.search-input').typeahead({                                
    name: 'topics',                                                          
    # local: ["how can i", "when should i"],  
    remote: "/topics.json?query=%QUERY",
    limit: 5,
    minLength: 3                                                                 
  })

  # epic search feature
  $overlay = $('.overlay')
  $('.search').on 'click', =>
    if $overlay.is(':visible')
      $overlay.fadeOut();
    else
      $overlay.fadeIn();

  $('.search').on 'hover', =>

  $('.close').on 'click', =>
    $overlay.fadeOut();

  # Index page menu
  urlTabParam = (param)->
    window.location.href = "#"+param

  $unansweredTab = $('.unanswered-q-tab');
  $topQTab      = $('.top-q-tab');
  $topUsersTab  = $('.top-users-tab');

  activeTabFunc = (tab) ->
    $tab = tab
    $unansweredTab.removeClass "active" ;
    $topQTab.removeClass "active";
    $topUsersTab.removeClass "active";
    $tab.addClass "active";

  unansweredQuestionsFunction = () ->
    activeTabFunc($unansweredTab);
    hideAllAnswers();
    unhide(".unanswered-questions-content ");

  topQuestionsFunction = () ->
    activeTabFunc($topQTab);
    hideAllAnswers();
    unhide(".top-questions-content");

  topUsersFunction = () ->
     activeTabFunc($topUsersTab);
     hideAllAnswers();
     unhide(".top-users-content");


  showTab = ->
    href =  window.location.href
    if /unanswered_q/.exec(href)
      unansweredQuestionsFunction();
    else if /top_q/.exec(href)
      topQuestionsFunction();
    else if /users_top/.exec(href)
      topUsersFunction();

  hide = (id) ->
    $(id).hide()

  unhide = (id) ->
    if $(id).hasClass "hide"
      $(id).removeClass "hide" 
    $(id).show()

  hideAllAnswers = ->
    $.each([".top-questions-content",".top-users-content" ,".unanswered-questions-content"], 
      ( index, value ) ->
        hide value
    )

  $unansweredTab.on "click", =>
    urlTabParam("unanswered_q");
    unansweredQuestionsFunction();

  $topQTab.on "click", =>
    urlTabParam("top_q");
    topQuestionsFunction();

  $topUsersTab.on "click", =>
    urlTabParam("users_top");
    topUsersFunction();

  showTab()


  $('#new_question_icon').tooltip()
  $('#search_question_icon').tooltip()
  $('#log_out_icon').tooltip()
  $('#user_profile_icon').tooltip()
  $('#star_question_icon').tooltip()
  $('#topic_user_profile_icon').tooltip()




















