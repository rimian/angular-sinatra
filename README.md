# Angular Sinatra

A Sinatra application running AngularJS and RSpec integration specs

This is a demo for integration testing AngularJS applications.

The idea is that Dynamic Sinatra Applications can be set up in integration tests to see how the AngularJS app behaves. See https://github.com/rimian/angular-sinatra/blob/master/spec/features/home_page_spec.rb

See: http://www.sinatrarb.com/intro.html#Dynamic%20Application%20Creation

# Requirements

A basic understanding of Ruby, AngularJS and RSpec.

## Developing

```
bundle install
npm install
```

## Testing

```
rspec
```

## Running Locally

```
rackup -p8000 config.ru
```
