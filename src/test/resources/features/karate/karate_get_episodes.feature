Feature: Access the list of episodes

  Background:
    * def urlPath = "https://rickandmortyapi.com/api"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_episode_rs.json')
    
    Scenario: Get a single episode
      Given url urlPath
      And path '/episode/28'
      When method GET
      Then status 200
      And match response contains responseExpected