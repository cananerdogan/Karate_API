Feature: Search Harry Potter Movies

  Background:
    * url 'http://www.omdbapi.com'

  Scenario: search for Harry Potter movies by title
    Given param apiKey = '744d4bd7'
    Given param s = 'harry potter'
    When method get
#    And match response == { Title: 'Harry Potter and the Deathly Hallows: Part 2' }
#    * def movieTitle = response.Title
#    * print movieTitle
    Then status 200
#    And print response
#    * def respArr = response.Search
#    * print respArr
      * def movie = karate.jsonPath(response, "$.Search[?(@.Year=='2001')]")
      * print movie[0].imdbID


  Scenario: search for Harry Potter movie by IMDB Id
    Given param apiKey = '744d4bd7'
    Given param i = 'tt0241527'
    When method get
    Then status 200
    And print response
    * def movieTitle = response.Title
    * def movieYear = response.Year
    * def releasedDate = response.Released
    * print 'Movie Title is', movieTitle
    * print 'Movie Year is', movieYear
    * print 'Movie is Released at', releasedDate







  