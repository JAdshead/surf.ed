
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

