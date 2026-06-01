require "sinatra/base"

module Passione::API
  class Server < Sinatra::Base
    # set :port, 4000
    set :bind, "0.0.0.0"
    
    # --- actial routes
    
    get "/" do
      content_type :json
      return {status: "OK"}.to_json
    end


  end
end
