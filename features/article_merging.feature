Feature: Merge Articles
	As a blog administrator 
	So that I can combine related articles
	I want to be able to merge articles 

	Background:
		Given the blog is set up

	Scenario: Cannot merge new articles
		Given I am logged into the publisher panel
		And I am on the new article page
		Then I should not see "Merge Articles"

	Scenario: A non-admin cannot merge articles.
		Given I am logged into the admin panel
		And I am on the new article page
		Then I should not see "Merge Articles"

	Scenario: When articles are merged, the merged article should contain the text of both previous articles.
		Given I am logged into the admin panel 
		And I am on the edit article page for the first article
		Then I should see "Merge Articles"
		When I fill in "merge_with" with "3"
		And I press "Merge"
		Then show me the page 
		Then I should see "Hello World"
		And I should see "2 comments"
		And I should see "Article 1. Article 2."

	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  

	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.	

	Scenario: The title of the new article should be the title from either one of the merged articles.

