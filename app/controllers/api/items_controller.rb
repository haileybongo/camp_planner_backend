class Api::ItemsController < ApplicationController
    skip_before_action :authorized

    def index
        items = Item.all 
        render json: ItemSerializer.new(items)
    end
end
