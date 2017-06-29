# Browserstack
Setting up: 
* Rails
* RSpec
* Capybara
* Browserstack

AIM: Run RSpec feature specs locally on browserstacks remote browsers.

Step 1: Get it working in local mode.

Run the rake task which switches the capybara driver to use browserstack.
`rake local`

The rake task simply sets `ENV['TEST_DRIVER'] = 'browserstack'`, this triggers in the `rails_helper.rb` to no longer use plain old selenium and the switch over to use browserstack.

The browser configuration for the remote browser that will be used is in `config/browserstack/local.config.yml`.


Requirements:

1. Setup a browserstack account.
2. Export the required env variables.
```
export BROWSERSTACK_USERNAME=<browserstack-username> &&
export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
```

TODO:
1. Parallel tests.
2. Get it working with CircleCI
