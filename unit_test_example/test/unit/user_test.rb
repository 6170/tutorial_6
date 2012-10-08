require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "add and remove friends" do
        billy = users(:billy)
        johnny = users(:johnny)

        assert (not billy.friends_with?(johnny)), "billy should not be friends with johnny before"
        assert (not johnny.friends_with?(billy)), "johnny should not be friends with billy before"

        billy.add_friend(johnny)

        assert (billy.friends_with?(johnny)), "billy should be friends with johnny"
        assert (johnny.friends_with?(billy)), "johnny should be friends with billy"

        johnny.remove_friend(billy)

        assert (not billy.friends_with?(johnny)), "billy should not be friends with johnny after"
        assert (not johnny.friends_with?(billy)), "johnny should not be friends with billy after"
    end
end
