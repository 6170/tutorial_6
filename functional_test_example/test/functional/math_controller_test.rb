require 'test_helper'

class MathControllerTest < ActionController::TestCase
    test "add when input is correct" do
        get :add, { 'num1' => -2, 'num2' => 4}
        assert_response 200
        assert_equal "2", @response.body
        assert_equal "text/plain", @response.content_type
    end
    test "add should return 400 when params invalid" do
        get :add, {'num2' => 'blah'}
        assert_response 400
    end
end
