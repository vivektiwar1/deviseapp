class SubscribersController < ApplicationController

	before_filter :authenticate_user!


	def new
		if current_user.subscribed == true
			redirect_to posts_path
		end
	end

	def update
		token = params[:stripeToken]
		customer = Stripe::Customer.create(
    	card: token,
    	plan: 1020,
    	email: current_user.email
    	)

    	current_user.subscribed = true
    	current_user.stripeid = customer.id
    	current_user.save

    	redirect_to posts_path
	end
end
