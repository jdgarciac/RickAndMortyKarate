Feature: Access the list of characters

  Background:
    * def urlPath = "https://rickandmortyapi.com/api/character/1,183"
    * def responseExpected = read ('../../jsonfiles/getcharacter/get_multiplecharacters_rs.json')
    
    Scenario: Get a single character
      Given url urlPath
      When method GET
      Then status 200
      And match response contains responseExpected