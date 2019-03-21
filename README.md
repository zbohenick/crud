# Tests

After Scaffolding, Files are created in the folders...
1. Controllers
2. Fixtures
3. Models
4. System

## Controllers
* Sets up a post and checks fixtures for each :one
* Makes browser call to post's url
* Lots of redirect tests (back to post index)

## Fixtures
* Holds the .yml files where it sets title string to MyString and body to MyText under one and two

## Models
* I wrote a test that checks the validation for a post to have body text

## System
* Tests visiting the index of the Posts
* Checks the h1 tag and expects "Posts"