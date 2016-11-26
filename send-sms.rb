require 'twilio-ruby'

account_sid = 'ACc6cb8f07f065d688ded1e149ccf2b824'
auth_token = '33a27d2b815d5d592d5533fadaa90fc9'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create(
  from: '+61437886843',
  to: '+61418349489',
  body: 'Robot invasion! Reply back with any sightings.'
)
