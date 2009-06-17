require 'culerity'

Before do
  $server ||= Culerity::run_server
  $browser = Culerity::RemoteBrowserProxy.new $server, {:browser => :firefox}
  $browser.webclient.setJavaScriptEnabled(false) 
  @host = 'http://localhost:3001'
end

Before("@js") do |scenario|
  $browser.webclient.setJavaScriptEnabled(true)
end

at_exit do
  $browser.close
  $server.close
end
