require 'test_helper'

class ExcersisesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Excersise.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Excersise.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Excersise.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to excersise_url(assigns(:excersise))
  end

  def test_edit
    get :edit, :id => Excersise.first
    assert_template 'edit'
  end

  def test_update_invalid
    Excersise.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Excersise.first
    assert_template 'edit'
  end

  def test_update_valid
    Excersise.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Excersise.first
    assert_redirected_to excersise_url(assigns(:excersise))
  end

  def test_destroy
    excersise = Excersise.first
    delete :destroy, :id => excersise
    assert_redirected_to excersises_url
    assert !Excersise.exists?(excersise.id)
  end
end
