# frozen_string_literal: true

SimpleCov.start 'rails' do

  # Configure custom app folders by type
  add_group 'Jobs', 'app/jobs'
  add_group 'Services', 'app/services'
end

SimpleCov.at_exit do
  SimpleCov.result.format!
  SimpleCov.minimum_coverage 70
  SimpleCov.minimum_coverage_by_file 0
end
