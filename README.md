This simple Rails app allows anyone to create a job posting but we’re missing a
few key features that need to be added right away.

This assignment is intended to gauge your current skill level with Rails, and your
ability to read and understand user requirements.

## New features to add

### Feature 1

Login functionality is one of the most basic components of any web application.
We want to add basic sign up/sign in/sign out functionality to our app and make
sure that only registered users are able to access protected features of the app.

**Requirements for this feature:**

* Users should be able to sign up for an account on our app. They must provide
their first and last name, their email address and a password.
* After creating an account, users should be able to sign in and access the protected areas of our application
* The protected actions are:
    * Posting a new job
    * Viewing the jobs index action
* If a user is not signed in, the top navigation menu should display two things:
    * A link to sign up for an account
    * A link to sign in to an existing account
* If a user is signed in to an account the top navigation menu should display:
    * A link to sign out
    * A link to post a new job
    * A link to view all of their jobs
    * The job search form
* Finally, when a user posts a new job, they should be the owner of that job.
    * On the jobs index action, users should only see the jobs that belong to them.

A note on this feature: While you can roll your own signup and sign in functionality
I strongly recommend utilizing a gem to implement this functionality.

We use Devise internally but you are free to use whatever solution you are most
comfortable with.

### Feature 2

Users that create many job postings will quickly find that it is difficult to
find the job they’re most interested in. There is a search form in the top
navigation menu that we can use to allow users to search all of their job postings
by the name of the job.

**Here are the requirements for this feature:**

* When a user types a string into the search box in the top navigation menu and
submits the form, they should receive a filtered list of jobs that match that
string they entered.

* The search in the database should be case insensitive, and should return any
result that includes the entered string, not just exact matches.

    * Example: If the user enters Account, jobs with the name “account manager” and
“DIRECTOR OF ACCOUNT MANAGEMENT” should both be returned.

* On the page that displays the resulting jobs, the user should also see a message
that displays the string they searched for along with the number of jobs that
matched their search string. This message should also include a way for the user
to clear their search and see all jobs.

### Feature 3

Users often forget important details about a job posting, and want a way to remind
themselves of these details by leaving comments on a job.

**Here are the requirements for this feature**

* From the jobs index page, each job should have a button to "Add a Comment"
* The comment button should expand to a text area + Submit button when clicked
* The comment form should be submitted via ajax, and the new comment should be
displayed without requiring a full page reload.

The layout of this feature is left up to your best judgement.
