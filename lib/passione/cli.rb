require "thor"
require "passione/api/server"

module Passione
  class CLI < Thor

    desc "start", "Starts the server"
    def start
      start_server
    end

    desc "version", "Shows the current version"
    def version
      puts "v#{VERSION}"
    end

    private

    def start_server
      puts "🚀 Starting sinatra server..."
      API::Server.run!
    end
  end
end