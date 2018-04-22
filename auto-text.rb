require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-autoreply' do
  twiml = Twilio::TwiML::Response.new do |r|
  	r.Message do |message|
        message.Body |do| "invoices.rb" 
        end
        
        employee_amount = vals[:qty].to_f * @users[who]['hourly'].to_f
  else
    employee_amount = vals[:amount].to_f * @users[who]['commission'].to_f / 100.0
  end
  end
  twiml.text
end
