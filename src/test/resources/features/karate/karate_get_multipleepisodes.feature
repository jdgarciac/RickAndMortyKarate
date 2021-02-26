Feature: Access the list of episodes

  Background:
    * def urlPath = "https://rickandmortyapi.com/api/episode/10,28"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_multipleepisodes_rs.json')
    
    Scenario: Get a single episode
      Given url urlPath
      When method GET
      Then status 200
      And match response contains responseExpected