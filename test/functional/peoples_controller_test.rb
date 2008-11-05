require 'test_helper'

class PeoplesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:peoples)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_people
    assert_difference('People.count') do
      post :create, :people => { }
    end

    assert_redirected_to people_path(assigns(:people))
  end

  def test_should_show_people
    get :show, :id => peoples(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => peoples(:one).id
    assert_response :success
  end

  def test_should_update_people
    put :update, :id => peoples(:one).id, :people => { }
    assert_redirected_to people_path(assigns(:people))
  end

  def test_should_destroy_people
    assert_difference('People.count', -1) do
      delete :destroy, :id => peoples(:one).id
    end

    assert_redirected_to peoples_path
  end
end
