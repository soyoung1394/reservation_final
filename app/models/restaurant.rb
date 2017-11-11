class Restaurant < ActiveRecord::Base
    has_many :comments
    has_many :messages
end
