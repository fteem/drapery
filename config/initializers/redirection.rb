Rails.application.middleware.insert_before "ActionDispatch::BestStandardsSupport", "SubdomainRedirect"

class SubdomainRedirect
  
  # we could set these values with the options array if needed
  def initialize(app, options = {})
    @app = app
  end
  
  def call(env)
    # we need ActionDispatch::Request for cookie access
    request = ActionDispatch::Request.new(env)
 
    unless request.url =~ /drapery/i || request.url =~ /subscriptions/i || request.url =~ /assets$/i
      return redirect_to_drapery(request)
    end
    @app.call(env)
  end
 
  def redirect_to_drapery(request)
    [301, {"Location" => request.url.sub(/[a-zA-Z0-9\._-]*$/i, "drapery")}, self]
  end

  def each(&block)
  end
end