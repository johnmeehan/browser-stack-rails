# Browserstack
Setting up: 
* Rails
* RSpec
* Capybara
* Browserstack

AIM: Run RSpec feature tests locally on browserstack...

Eventually: Get it working with CircleCI

Browser Configs `config/browserstack/local.config.yml`

Step 1: Get it working in local mode.
Run the rake task which switches the capybara driver to use browserstack.
To Run: `rake local`


ISSUES: 
1. The Feature tests fail.
2. When I examine the video playback on browserstack.com I see "Unable to connect to the page!"
3. I am unable to connect to `localhost:3000`


Requirements:
```
export BROWSERSTACK_USERNAME=<browserstack-username> &&
export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
```