# coffee-api-challenge
A coffee API that conforms to a set of [contract tests](http://martinfowler.com/bliki/IntegrationContractTest.html).

May not produce actual coffee.

## Prerequisites

* Docker (eg. [Docker Machine](https://docs.docker.com/machine/) or boot2docker)
* [Wercker](http://wercker.com/) CLI (installation instructions: http://wercker.com/cli/install/)

It's also possible to run everything using a local installation of Ruby, but I'd recommend you use Wercker, 
as it will ensure that your environment matches the one I used and the one used for the CI build.

## Running the tests (including contract tests)

* Run `./go.sh test` to run the tests

# Original challenge description
### The Challenge
Create an API that passes the PACTO contract tests in this repository.

### To run the contracts
```bash
bundle exec rake pacto:validate['https://your_api_url:port','contracts']
```

### To Win
##### We will be looking for:
- [Clean code](http://stackoverflow.com/questions/954570/definition-of-clean-code)
- Evidence of [TDD](http://www.extremeprogramming.org/rules/testfirst.html)
- A [go script](https://www.thoughtworks.com/insights/blog/praise-go-script-part-i)
- A [readme](https://robots.thoughtbot.com/how-to-write-a-great-readme)

##### With extra credit for:
- A CD pipeline (e.g. [SnapCI](https://www.snap-ci.com/))
- A deployed API (e.g. [Heroku](https://www.heroku.com))
- Submitting a solution as a pair

### To Submit
Feel free to paste a link to your solution github repo into the code challenge email thread or email one of the Software Shokunin Community organisers directly with a link.  

If you don’t want to post code publicly we still encourage you to give the challenge a go!  Use the problem to exercise your skills, take your brain for a jog and work those typing muscles!!


Peace and love fellow Shokunin

