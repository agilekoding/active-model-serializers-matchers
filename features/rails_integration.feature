Feature: Integration with RoR

  In order to integrate ActiveModelSerializersMatchers with RoR
  I want to generate a rails app, use this gem and write easy specs for ActiveModelSerializers

  Scenario: generate a rails app and use Rspec matchers
    When I generate a new rails app
    And I configure the app to use rspec-rails
    And I configure the app to use ActiveModelSerializers
    And I configure the app to use ActiveModelSerializersMatchers
    And I write one attribute spec in "spec/user_serializer.rb"
    And I run bundle exec rake spec spec/
    Then the output should contain "1 examples, 0 failures" 
    And the output should contain "serializes name attribute"
