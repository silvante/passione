require "thor"

module Passione
  class CLI < Thor

    desc "start", "Starts the server"
    def start
      puts "🚀 Starting the server..."
    end

    desc "version", "Shows the current version"
    def version
      puts "v#{VERSION}"
    end
  end
end