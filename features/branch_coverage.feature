Feature: Branch Coverage Report

  Background:
    Given I'm working on the project "fake_project"

  Scenario:
    # given branch coverage is enabled
    Given a file named "spec/simplecov_config.rb" with:
    """
    require 'simplecov'
    SimpleCov.start do
      enable_coverage :branch
    end
    """
    # when i run the tests
    When I run `rspec`
    # then i should see a branch coverage summary
    Then the stdout should contain "2 / 4 branches (50.0%) covered"
