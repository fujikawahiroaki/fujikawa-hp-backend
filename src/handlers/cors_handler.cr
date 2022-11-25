class CORSHandler
  include HTTP::Handler
  def call(context)
    allowed_hosts = ENV["ALLOWED_HOSTS"]? || "*"
    context.response.headers["Access-Control-Allow-Origin"] = allowed_hosts
    context.response.headers["Access-Control-Allow-Headers"] = "DNT,Origin,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Bearer"
    context.response.headers["Access-Control-Allow-Methods"] = "*"
    call_next(context)
  end
end
