class MessageController < ApplicationController
	before_action :require_login, only: [:inbox, :sendMessage, :detail] # What 's happen if I want to check login all pages

	def inbox
		@curren_user = get_current_user # can it be a global variable?
		@list_message = Message.where("receiver = ? or sender = ?", @curren_user.id, @curren_user.id).sort do|x,y| y.created_at<=>x.created_at end # is there another way
	end

	def detail
		@curren_user = get_current_user
		@message = Message.find(params["id"])
		@sender = User.find(@message.sender)
		if @sender.id != @curren_user.id
			@message.isRead = true
			@message.save
		end
	end

	def sendMessage
		@curren_user = get_current_user
		@friend_list = []
		Friend.where(owner: @curren_user.id).each_with_index do |friend, index| #is there better way?
			@friend_list[index] = User.find(friend.friend)
		end
	end

	def sendTo
		@curren_user = get_current_user
		params[:message][:receiver].each do |receiver| # I got a blank "" value in here
			unless (receiver.blank?)
				@message = Message.new()
				@message.sender = @curren_user.id
				@message.receiver = receiver
				@message.body = params[:message][:body]
				@message.isRead = false
				@message.save
			end
		end
		redirect_to inbox_path
	end
end
