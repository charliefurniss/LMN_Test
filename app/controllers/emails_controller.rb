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

  		return email_type_array

  	end

  	def calc_click_rate()

  		click_rate_array = []

  		email_type_array = create_email_type_array()

  		email_type_array.each do |email_type|

  			email = @emails.where(:EmailType => email_type)

  			puts email

  			click_rate = (email.where(:Event => "click").count * 100)

  			click_rate_array.push(click_rate)

  		end

  		puts click_rate_array

  	end

  	calc_click_rate()

  end
end
