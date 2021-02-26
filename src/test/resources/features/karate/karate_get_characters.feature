Feature: Access the list of characters

  Background:
    * def urlPath = "https://rickandmortyapi.com/api"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_character_rs.json')
    
    Scenario: Get a single character
      Given url urlPath
      And path 'character/2'
      When method GET
      Then status 200
      And match response contains responseExpected