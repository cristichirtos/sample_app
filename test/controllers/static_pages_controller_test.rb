require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @app_title = 'Sample App'
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select 'title', "#{@app_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@app_title}"
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@app_title}"
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@app_title}"
  end
end
