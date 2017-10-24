Feature: Google search

  Scenario: Simple google search
    Given i am in the google home page
    When  i search for "html tutorial"
    Then  i see 10 search results
    And   i see "HTML Tutorial - W3Schools" in the search results