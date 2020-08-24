class Api::ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: ItemSerializer.new(items)
    end
end
