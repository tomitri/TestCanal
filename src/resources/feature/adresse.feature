@ModificationAdresse

Feature : Update Adresse

Background: Attempt to modify adresse
    Given I fill in "Adresse" page on URL "www.canal.fr"

Scenario: Update Adresse
    When I click on the "save change" button
    And I change the old adresse with "my new adresse"
    Then I should see "the adresse has been update" message
    
Scenario Outline: Search the new adresse
    Given MyNewAdresse is "<Adresse>"
    When I seach for the new adresse
    Then I should see "<answer>"
    
    Examples
    | Montreuil |
    | Clichy |
    | Paris |
