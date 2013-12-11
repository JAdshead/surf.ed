
$ ->
  $('input.search-input').typeahead({                                
    name: 'topics',                                                          
    prefetch: ["topics"]                                       
    limit: 5                                                                   
  })