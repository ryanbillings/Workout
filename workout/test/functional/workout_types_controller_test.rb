require 'test_helper'

class WorkoutTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => WorkoutType.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    WorkoutType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    WorkoutType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to workout_type_url(assigns(:workout_type))
  end

  def test_edit
    get :edit, :id => WorkoutType.first
    assert_template 'edit'
  end

  def test_update_invalid
    WorkoutType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => WorkoutType.first
    assert_template 'edit'
  end

  def test_update_valid
    WorkoutType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => WorkoutType.first
    assert_redirected_to workout_type_url(assigns(:workout_type))
  end

  def test_destroy
    workout_type = WorkoutType.first
    delete :destroy, :id => workout_type
    assert_redirected_to workout_types_url
    assert !WorkoutType.exists?(workout_type.id)
  end
end
