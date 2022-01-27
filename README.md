Test driving your development

A short exercise to practice test driven development.

Guidance

Read the user stories below, before you start coding create a domain model of the application.

In pairs, test drive the development of the application.

Select one feature at a time and focus on your development process:

Write a test for the feature.
Use unit tests to drive the implementation of the feature.
Consider refactoring once the feature test is passing.
Commit your code.
Swap driver/navigator role.

Challenge yourself:

Set a timer for 15 minutes before you write the feature test.
If the timer goes off before the feature test is passing, use git stash to reset your codebase to the last commit and start again.
Maybe you need to make the feature smaller?
Maybe you need to simplify your code?
Once the feature test is passing, take as long as you like to refactor the code and commit.

User Stories:

As an office worker
So I can record useful information
I want to be able to create a text note

As an office worker
So I can carry all my useful information
I want to keep all my notes in a notebook.

As an office worker
So I can categorise a note
I want to be able to add a tag (only one tag) to a note

As an office worker
So I can find notes on a certain topic
I want to be able to search for all the notes with a specific tag

COMMENTS

Bad aspect - currently need to add the entire note object to notebook. Would be better if it were just the note text. This requires injection and remodelling tests, which is not the point of this exercise though