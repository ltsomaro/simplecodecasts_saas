
ACCOUNT_SID = ENV["twilio_sid"]
ACCOUNT_TOKEN = ENV["twilio_token"]

TWILIO_CLIENT = Twilio::REST::Client.new ACCOUNT_SID, ACCOUNT_TOKEN 
