class EmailapiController < ApplicationController
  def index
  end

  def subscribe

      @list_id = ENV["MAILCHIMP_LIST_ID"]
      gb = Gibbon::Request.new

      gb.lists.subscribe({
        :id => @list_id,
        :email => {:email => params[:email][:address]}
        })

  end
end
