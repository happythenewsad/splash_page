class Post < ActiveRecord::Base
  validates :sender_address, :presence => true
end
