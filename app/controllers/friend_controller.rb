class FriendController < ApplicationController
	before_action :require_login, only: [:list, :blockList, :add, :block]
	def list
		@curren_user = get_current_user
		@user_list = User.all # I don't know how to query with 3 tables
		@friend_list = []
		Friend.where(owner: @curren_user.id).each_with_index do |friend, index| #is there better way?
			@friend_list[index] = User.find(friend.friend)
		end
	end

	def blockList
		@curren_user = get_current_user
		@block_list = []
		Block.where(blocker: @curren_user.id).each_with_index do |block, index| #is there better way?
			@block_list[index] = User.find(block.blocked)
		end
	end

	def add
		@curren_user = get_current_user
		@friend = Friend.new
		@friend.owner = @curren_user.id
		@friend.friend = params["id"]
		@friend.save

		Block.where("blocker = ? and blocked = ?", @curren_user.id, params["id"])
		if(@block_list.length == 1)
			@block_list[0].destroy
		end

		redirect_to friend_list_path
	end

	def addByPost
		@curren_user = get_current_user
		@friend = Friend.new
		@friend.owner = @curren_user.id
		@friend.friend = params[:friend][:friend]
		@friend.save

		@block_list = Block.where("blocker = ? and blocked = ?", @curren_user.id, params["id"])
		if(@block_list.length == 1)
			@block_list[0].destroy
		end


		redirect_to friend_list_path
	end

	def block
		@curren_user = get_current_user
		@block = Block.new
		@block.blocker = @curren_user.id
		@block.blocked = params["id"]
		@block.save

		@friend_list = Friend.where("owner = ? and friend = ?", @curren_user.id, params["id"])
		if(@friend_list.length == 1)
			@friend_list[0].destroy
		end

		redirect_to friend_list_path
	end
end
