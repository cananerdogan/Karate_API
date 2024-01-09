Feature: Get

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: First get scenario
    Given path 'posts'
    When method get
    And print response
    * def first = response[0]
    * print first
    * def firstTitle = first.title
    * print firstTitle
    Then status 200


