Feature: Game Grid
  Scenario: Create a grid with backend data
    Given Visit to homepage
    Then I should see "Batalla Naval"
    And I should see "grid"
    And I should see "<p> _ _ _</p><p> _ _ _</p><p> _ _ _</p>"

  Scenario: Enter coordinates
    Given Visit to homepage
    When Enter 1 as x coordinate and 1 as y coordinate
    Then I should see "you won"

  Scenario: Test game over
    Given Visit to homepage
    When All bombs are used
    Then I should see "game over"

