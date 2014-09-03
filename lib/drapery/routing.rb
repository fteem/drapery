module Drapery
  class Routing
    def initialize(app, options = {})
      @app = app
    end
    
    def call(env)
      if Drapery::Engine.is_mounted?
        request_uri = env['REQUEST_URI']
        puts env['REQUEST_URI']
     
        unless request_uri =~ /https?:\/\/[a-zA-Z0-9-_\.]*[:0-9]*\/$/i || request_uri =~ /assets/i
          return redirect_to_drapery(request_uri)
        end
      end
      @app.call(env)
    end
   
    def redirect_to_drapery(uri)
      [301, {"Location" => uri.sub(/[a-zA-Z0-9\._-]*$/i, "")}, self]
    end

    def each(&block)
    end
  end
end