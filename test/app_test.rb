require 'test_helper'

class AppTest < Minitest::Test
  def test_index
    get '/'
    refute_empty_response
  end

  def test_get_healthcheck
    get '/healthcheck'
    assert_equal 200, status
  end
end
