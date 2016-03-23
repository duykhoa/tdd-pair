RSpec.configure { |c| c.pattern = '**/*_spec.rb' }
Dir["#{ __dir__ }/../lib/*.rb"].each { |f| require_relative f }
