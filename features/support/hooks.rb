require 'culerity'
`mongrel_rails start -e cucumber -p 3001 -d`

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
  $browser.exit
  $server.close
  `mongrel_rails stop`
end
