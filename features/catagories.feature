Feature: Create categories
  As an administrator
  In order to manage my articles
  I want to be able to create categories to my blog

  Background: 
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create Categories
    Given I am on the new categories page
    When I fill in "category_name" with "test_category_name"
    And I fill in "category_keywords" with "test_category_keywords"
    And I fill in "category_description" with "This is just for testing"
    And I press "Save"
    Then I should see "test_category_name"

    Then I follow "test_category_name"

    When I fill in "category_name" with "test_category_name_change"
    And I press "Save"
    Then I should see "test_category_name_change"
    Then I should not see "test_category_name" 