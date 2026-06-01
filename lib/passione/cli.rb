require "thor"
require "passione/api/server"

module Passione
  class CLI < Thor

    desc "start", "Starts the server"
    option :port, type: :numeric, default: 4000, desc: "Server port"
    def start
      port = options[:port]
      start_server(port)
    end

    desc "version", "Shows the current version"
    def version
      puts "v#{VERSION}"
    end

    private

    def start_server(port)
      puts "🚀 Starting sinatra server..."
      API::Server.run!(
        port: port
      )
    end
  end
end