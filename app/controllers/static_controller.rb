class StaticController < ApplicationController
    
    def index
        @users = User.all
        @customers = Customer.all
        @orders = Order.all
    end

    def clients  
        
    end 
    
    before_action :require_token, only: [:clients]
end
