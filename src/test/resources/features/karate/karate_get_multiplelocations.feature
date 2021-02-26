Feature: Access the list of locations

  Background:
    * def urlPath = "https://rickandmortyapi.com/api/location/3,21"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_multiplelocations_rs.json')
    
    Scenario: Get a single location
      Given url urlPath
      When method GET
      Then status 200
      And match response contains responseExpected