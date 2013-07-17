Feature: code-breaker submits guess

  Scenario Outline: submit guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"
    Scenarios: no matchs
      | code | guess | mark |
      | 1234 | 5555  |      |
    Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |
    Scenarios: 2 numbers corrects 
      | code | guess | mark |
      | 1234 | 5254  | ++   |
    Scenarios: 3 numbers corrects
      | code | guess | mark |
      | 1234 | 5234  | +++  |
    Scenarios: all numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
