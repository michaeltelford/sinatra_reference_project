require 'test_helper'

class MyAppTest < Minitest::Test

  def test_index
    get '/'
    refute_empty_response
  end

  def test_asset_app_js
    get '/assets/app.js'
    refute_empty_response
  end

  def test_asset_app_css
    get '/assets/app.css'
    refute_empty_response
  end
end
