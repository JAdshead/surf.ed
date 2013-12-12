
$ ->
  $('input.search-input').typeahead({                                
    name: 'topics',                                                          
    # local: ["how can i", "when should i"],  
    remote: "/topics.json?query=%QUERY",
    limit: 5,
    minLength: 3                                                                 
  })