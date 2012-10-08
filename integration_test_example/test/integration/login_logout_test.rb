require 'test_helper'

class LoginLogoutTest < ActionDispatch::IntegrationTest
    test "login and then logout" do
        post_via_redirect "/login"
        assert_equal '/welcome', path
        assert_equal true, session[:logged_in]

        post_via_redirect "/logout"
        assert_equal '/', path
        assert_equal false, session[:logged_in]
    end
end

