Feature: InsertToListAcceptanceTest
  This feature inserts element to list based on their position on sorted list

  Scenario: Insert one element by value
    Given an empty list
    When I append an element with value 4.0
    Then the list should contain 1 element
    And the list should contain that element

  Scenario: Insert one element to a sorted linked list, where the element is not bigger than last element in list
    Given a sorted list with 4 elements
    When I insert an element with value 3.3
    Then the list should contain 5 elements
    And The list should be sorted
