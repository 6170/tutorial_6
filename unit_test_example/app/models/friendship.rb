class Friendship < ActiveRecord::Base
  attr_accessible :user_1, :user_2
  belongs_to :user
  belongs_to :friend, :class_name => 'User', :foreign_key =>'friend_id'
end
