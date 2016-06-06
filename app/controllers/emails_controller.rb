class EmailsController < ApplicationController
  
  def index

  	@emails = Email.all

  	@emails_opened = (@emails.where(:Event => "open") | @emails.where(:Event => "click")).count

  	@emails_clicked = @emails.where(:Event => "click").count

  	def create_email_type_array

  		email_type_array = []

  		@emails.each do |email|

  			email_type_array.push(email.EmailType)

  		end

  		email_type_array = email_type_array.uniq

  		return email_type_array

  	end

  	def calc_click_rate

  		click_rates_array = []

  		email_type_array = create_email_type_array()

  		email_type_array.each do |email_type|

  			hash = {}

  			email = @emails.where(:EmailType => email_type)

  			email_type_total = email.count

  			puts email_type_total

  			click_count = (email.where(:Event => "click")).count

  			puts click_count

  			click_rate = click_count.to_d/email_type_total.to_d * 100

  			hash["email_type"] = email_type

  			hash["click_rate"] = click_rate.round(2)

  			click_rates_array.push(hash)

  		end

  		return click_rates_array

  	end

  	@click_rates_array = calc_click_rate()

  end
end
