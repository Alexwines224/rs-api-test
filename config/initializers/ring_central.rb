require 'ringcentral_sdk'

client = RingCentralSdk.new(
  ENV["my_app_key"],
  ENV["my_app_secret"],
  RingCentralSdk::RC_SERVER_SANDBOX,
  {username: ENV['my_username'], extension: ENV['my_extension'], password: ENV['my_password']}
)


response = client.http.post do |req|
  req.url 'account/~/extension/~/ringout'
  req.headers['Content-Type'] = 'application/json'
  req.body = {
    :to   => { :phoneNumber => '14155551212'}, 
    :from => { :phoneNumber => ENV['my_username'] }, 
  }
end