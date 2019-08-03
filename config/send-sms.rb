require("bundler")
Bundler.require()

account_sid="ACaa55da80549e7207039ea97e26ddc934"
auth_token="a614495d2162b9d8b2ce9260365a30b0"

@client = Twilio::REST::Client.new(account_sid,auth_token)

@client.messages.create(
    to: '+13147994553',
    from: "+13147017644",
    body: "hello test 1 2 3 4 5")
    