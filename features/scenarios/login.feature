Feature: Login functionality
    
    @pertemuan-1
    Scenario: As a user, I can login with valid credentials
        Given i am on the login page
        When i enter valid username and password
        And  i click the login button
        Then i should be logged in to the application



