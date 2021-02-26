Feature: Access the list of locations

  Background:
    * def urlPath = "https://rickandmortyapi.com/api"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_location_rs.json')
    
    Scenario: Get a single location
      Given url urlPath
      And path '/location/3'
      When method GET
      Then status 200
      And match response contains responseExpected