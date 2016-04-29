Feature: Game Grid
  Scenario: Create a grid with backend data
    Given Visit to homepage
    Then I should see "Batalla Naval"
    And I should see "grid"
    And I should see "_ _ _"

#  Scenario: Enter coordinates
#    Given Visit to homepage
#    When Enter "1" as x coordinate and "2" as y coordinate
#    Then I should see "_ _ _"

