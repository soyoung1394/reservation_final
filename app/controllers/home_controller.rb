class HomeController < ApplicationController
    def index
        list = []
        Restaurant.all.each do |r|
            list << r.location
        end
        list.uniq!.sort!
        @list = list
    end
    
    def result
        @results = Restaurant.where(location: params[:location], 
                                    category: params[:category], 
                                    max_visitor: params[:max_visitor])
    end
    
end
