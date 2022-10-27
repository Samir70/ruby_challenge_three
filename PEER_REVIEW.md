# Peer Review

In Agile teams, you will find that lots of the work that gets done between the team members has shared responsibility. This is to allow for flexibility and efficiency.

One of these key tasks within an Agile team is, Code Review.

Code Review is an important aspect of a Developers workflow. Not only does it allow for catching bugs and logical errors; it strengthens the reviewer's ability to evaluate and improve their own code. 

This in turn facilitates skill-set development and alleviates the pressure around learning new technologies.

This also lessens the amount of functionality that rests entirely on one persons shoulders. It creates cross team visibility and accessibility.

## What To Look Out For

Depending on the code you are reviewing, you might be looking for any number of things, whether they be simple program requirements, or complex integration functionalities. This will vary depending on the project and technologies, but generally, here are some things a code reviewer may want to be on the lookout for:

- Logical errors
    - Are there any human errors in the logic? 
    - Does some functionality look as though its side effects could cause errors?
    - Could this logic be implemented more easily, more concisely or more clearly?

- Requirements analysis
    - Does the file, code or program meet the intended requirements?
    - Are there any unintended results?
    - Does the program or code do more than it ought to?
    - Could the code be refactored to achieve the desired outcome more efficiently?

- Readability and accessibility
    - Is the code formatted well; is it easy to read?
    - Could the code be reformatted or refactored to improve accessibility?
    - Is the code documented well, or is there good design documentation in place?

- Testing
    - Does the code pass the tests already in place?
    - Do the tests need to change to accommodate changes in the code?
    - If the tests are being reviewed - do they test for all cases being implemented?


## Giving it a go

We are going to ask you to have a go at reviewing one of your peers challenges.

We can do this by using GIT. Your peer will have made a branch called `peer_review_branch`. You are to find the Pull Request on their repo, and go through the code, leaving comments on the appropriate lines.

This will then give them an opportunity to amend their submission.

Once both parties are satisfied, the Pull Request can be merged, and a coach will review both the submission *and* the Code Review.

## Checklists

To give you a good head start, and begin building your critical analysis, we've built a checklist of items for you to tick off as you review each submission.

[Challenge One - Password Validator](./chapter1/challenges/program/CHECKLIST.md)

Challenge Two - Password Manager 1.0, will be reviewed by your Technical Coach.

[Challenge Three - Password Manager 2.0](./chapter3/challenges/program/CHECKLIST.md)

## Making a Pull Request

For you GitHub repo for the challenge submission, you should be making a new branch locally ready for your peer to review.

You can do this by using the following commands:

``` shell
; git init
; git branch peer_review_branch
; git switch peer_review_branch
```

Then you will be able to add, commit and push your changes to this new branch:

```shell
; git add .
; git commit -m "initial commit for challenge"
; git remote add origin <your-repo-name-goes-here>.git
; git push -u origin peer_review_branch
```

Once these changes have been pushed to your repo, you will be able to make a new Pull Request. You can navigate to Pull Requests here:

![Pull Request](./images/pull_request.png)

Then you should see your new branch name pop up in the drop down box when comparing it to `main`:

![Compare Branch](./images/pull_request_branch.png)

This Pull Request can then be shared with your peer for them to comment on. 

**Don't MERGE the branch until you re both happy that there is no more changes to be made**

If you're reviewing *or* your code is being reviewed, please take a screenshot (`cmd + shift + 4` on a mac) of the Pull Request comments.

Once you're both happy and the changes have been merged to the main branch, upload a screenshot of the PR via the form.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=PEER_REVIEW.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=PEER_REVIEW.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=PEER_REVIEW.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=PEER_REVIEW.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=PEER_REVIEW.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
