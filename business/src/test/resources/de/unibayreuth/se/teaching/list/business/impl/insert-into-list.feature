Feature: InsertToListAcceptanceTest
  This feature inserts element to list based on their position on sorted list

  Scenario: Insert one element by value
    Given an empty list
    When I append an element with value 4.0
    Then the list should contain 1 element
    And the list should contain that element

  Scenario: Insert one element to a sorted linked list, where the element is bigger than first
  and smaller than last element of the list
    Given I have elements with the following values in my list:
  | 0.5 |
  | 0.9 |
  | 3.3 |
  | 4.2 |

    When I insert an element with value 3.7
    Then the list should contain 5 elements
    And The list should be sorted

    Scenario: insert an element to a sorted linked list, where the element is bigger than the last element
      Given I have elements with the following values in my list:
        | 1.1 |
        | 2.3 |
        | 4.1 |
      When I insert an element with value 5.0
      Then the list should contain 4 elements
      And The last list element should be 5.0

  Scenario: insert an element to a sorted linked list, where the element is smaller than the first element
    Given I have elements with the following values in my list:
      | 1.1 |
      | 2.3 |
      | 4.1 |
    When I insert an element with value 0.9
    Then the list should contain 4 elements
    And The first list element should be 0.9