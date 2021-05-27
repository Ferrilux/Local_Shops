class StaticController < ApplicationController
    
    def index
        @users = User.all
        @customers = Customer.all
        @orders = Order.all
    end

    def feed
        
    end  
    
    #before_action :require_token, only: [:feed]
end
