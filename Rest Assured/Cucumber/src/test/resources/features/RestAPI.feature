#Author: krishnakamal.mandal@publicissapient.com
@ByKrish
Feature: Testing of APIs using Rest Assured

  Scenario Outline: Test the get request
    Given Get call "<url>"
    Then Response is "<statusCode>"

    Examples:
    | url | statusCode |
    | /users | 200 |
    
    
  Scenario Outline: Search Samantha
    Given Get call "<url>"
    Then Response user is "<username>"

    Examples:
    | url | username |
    | /users/3 | Samantha |
    
  
  Scenario Outline: Search post by Samantha
    Given Get call "<url>"
    Then Response post is "<postOfSamantha>"

    Examples:
    | url | postOfSamantha |
    | /posts/3 | ea molestias quasi exercitationem repellat qui ipsa sit aut | 