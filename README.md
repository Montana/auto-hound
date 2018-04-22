# auto-hound

![Screenshot](bro.png)
![Screenshot](paid.png)

## Updates

* Added in v1.1 is "auto text" which texts the person/company in question that owes you money using the Twilio API. One of the few things you'll need if you want this function to work properly is a <a href="https://github.com/sinatra/sinatra">Sinatra</a>, which can be install by running ```gem install sinatra```. 

## Usage 

If you're owed money, and it's 3+ months overdue, the ruby script will email person everyday until invoice is paid, with Harvest invoice(s) in question attached as a PDF. 

Install your dependencies ```git submodule update —init```, then ```sudo gem install active_resource_throttle```. Then retrieve invoice via ```get_invoices.rb (invoice numbers)``` then use the "hound" flag if need be for extra hound assurance, for an email the next day at the same time, you could even set a cron job for this, but for the sake of time you could do: ```get_invoices.rb -h (invoice numbers)```.

## Features 

* The "hound flag" which can simply be used by adding "-h" in the command when running the ruby script. For 100% next day hound assurance. 

* Ratelimiting -- We don't want to SPAM these people, but we do want to get paid! You can do this by using the ratelimit flag which is "-r".

## Upcoming Features | Updates 

* In version 2.0 there will be an autodialer that will call the company in question and just say the amount owed in a computer generated voice using Loop, or something like TTSAutomate. 


<p>AutoHound is a program written by <a href="http://www.mmendy.com">Montana Mendy</a>, to make sure you get paid on time.</p>
