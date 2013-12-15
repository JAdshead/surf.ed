
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

  $unasweredTab = $('.unaswered-q-tab');
  $topQTab      = $('.top-q-tab');
  $topUsersTab  = $('.top-users-tab');

  # $unasweredTab.on('click', activeTabFunc($unasweredTab));

  $unasweredTab.on "click", =>
    unansweredQuestionsFunction();

  $topQTab.on "click", =>
    topQuestionsFunction();

  $topUsersTab.on "click", =>
    topUsersFunction();


  

  activeTabFunc = (tab) ->
    $tab = tab
    $unasweredTab.removeClass "active" ;
    $topQTab.removeClass "active";
    $topUsersTab.removeClass "active";
    $tab.addClass "active";

  unansweredQuestionsFunction = () ->
    activeTabFunc($unasweredTab);
    hideAllAnswers();
    unhide(".unaswered-questions-content");

  topQuestionsFunction = () ->
    activeTabFunc($topQTab);
    hideAllAnswers();
    unhide(".top-questions-content");

  topUsersFunction = () ->
     activeTabFunc($topUsersTab);
     hideAllAnswers();
     unhide(".top-users-content");

  unhide = (id) ->
    if $(id).hasClass "hide"
      $(id).removeClass "hide" 
    $(id).show()

  hide = (id) ->
    $(id).hide()

  hideAllAnswers = ->
    $.each([".top-questions-content",".top-users-content" ,".unaswered-questions-content"], 
      ( index, value ) ->
        hide value
    )




