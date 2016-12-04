class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #fedxex key: wpHuXLG8k5Wn8N7O

  shipper = { :name => "Sender",:company => "Company",:phone_number => "555-555-5555",:address => "Main Street",:city => "Harrison",:state => "AR",:postal_code => "72601",:country_code => "US" }
  recipient = { :name => "Recipient",:company => "Company",:phone_number => "555-555-5555",:address => "Main Street",:city => "Franklin Park",:state => "IL",:postal_code => "60131",:country_code => "US",:residential => "false" }
  packages = []
  packages << {:weight => {:units => "LB", :value => 2},:dimensions => {:length => 10, :width => 5, :height => 4, :units => "IN" }}	  
  packages << {:weight => {:units => "LB", :value => 6},:dimensions => {:length => 5, :width => 5, :height => 4, :units => "IN" }}
  
  shipping_options = {  :packaging_type => "YOUR_PACKAGING", :drop_off_type => "REGULAR_PICKUP"}

  fedex = Fedex::Shipment.new(:key => 'wpHuXLG8k5Wn8N7O',:password => 'jlT4QSGojLYs7x7Gf6J5mr0cb',:account_number => '604501202',:meter => '118755365',:mode => 'development')
  rate = fedex.rate(:shipper=>shipper,:recipient => recipient,:packages => packages,:service_type => "FEDEX_GROUND",:shipping_options => shipping_options)
    
#Not completed facing issue with fedex API. Need help of someone who already did this.
#Developer Test Key:    wpHuXLG8k5Wn8N7O
#Test Account Number:	604501202
#Test Meter Number:		118755365
                
                                    
end
