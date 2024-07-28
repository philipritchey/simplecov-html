# frozen_string_literal: true

Given("I'm working on the project {string}") do |project_name|
  this_dir = File.dirname(__FILE__)

  # Clean up and create blank state for project
  cd(".") do
    FileUtils.rm_rf "project"
    FileUtils.cp_r File.join(this_dir, "../../test_projects/#{project_name}/"), "project"
  end

  step 'I cd to "project"'
end

