require 'ragi/call_handler'
class CallerIdHandler < RAGI::CallHandler
  APP_NAME = 'simon'
  
  def identify
    answer
    wait(1) 

    user_phone_number = @params[RAGI::CALLERID]
    
    say_invoices.rb(user_phone_number)
  
    hang_up
    wait(1)
    redial 
  end
end
