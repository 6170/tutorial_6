class User < ActiveRecord::Base
  attr_accessible :name
  has_many :friends, :through => :friendships
  has_many :friendships, :dependent => :destroy

  def add_friend(other_user)
      Friendship.find_or_create_by_user_id_and_friend_id(self.id,other_user.id)
      Friendship.find_or_create_by_friend_id_and_user_id(self.id,other_user.id)
  end

  def remove_friend(other_user)
      Friendship.where(:user_id => self.id, :friend_id=> other_user.id).destroy_all
      Friendship.where(:friend_id => self.id, :user_id => other_user.id).destroy_all
  end

  def friends_with?(other_user)
      return self.friends.where(:id => other_user.id).exists?
  end
end
