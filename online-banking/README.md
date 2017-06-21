# Online Banking

We would like you to try this fun, short, simple task and show us your Rails chops! We named it "Online Banking" because it involves money transfers but you shouldn't be daunted. There are only two views you should look at (`/` and `/users/:id`), and you will immediately get a general sense of what to build. If you are ready, please take a look at the following requirements carefully and feel free to start making ANY changes to the skeleton app. Make sure to have clear commit history and write clear code so it's easier for us to review your awesome work :) We expect the entire task to take about 1-2 hours.

### Setup

1. Fork this repository and make it private
2. Invite whoever you interviewed with to the forked repo
3. Clone the repo and run the following commands

```
$ bundle install
$ bundle exec rake db:setup
$ rails s
```

### Feature specs

- Money transfers
    - User A can send User B money
        - if User A has enough balance at the time User B accepts the transfer
    - Money transfers can be either public or private
        - public transfers can be seen by everyone
        - private transfers can be seen by only the sender and requester
- Permissions
    - User B can block User A
        - All of User A’s money transfers to User B will automatically be rejected
        - User A won't be able to see User B’s private transfers
- Others
    - Add validations/indexing as you see fit (possibly critical)
    - Write spec with RSpec (we encourage TDD)
    - Expect thousands of requests / sec
    - Feel free to use sidekiq, redis, elastic-search if you think they are necessary
    - We encourage smaller Ruby methods and classes
    - Use Ruby's class inheritance and module mixins as you see fit

### How to submit

Push your code to your forked repo's master branch and let us know via email that you've completed the task. After reviewing your code, we will get back to you if we see a good fit!
