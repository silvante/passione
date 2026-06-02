# frozen_string_literal: true

require_relative "passione/version"
require_relative "passione/cli"

Dir[File.join(__dir__, "models", "*.rb")].sort.each do |file|
  require file
end

module Passione
  class Error < StandardError; end
  # Your code goes here...
end
