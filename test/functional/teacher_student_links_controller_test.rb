require 'test_helper'

class TeacherStudentLinksControllerTest < ActionController::TestCase
  setup do
    @teacher_student_link = teacher_student_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_student_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_student_link" do
    assert_difference('TeacherStudentLink.count') do
      post :create, teacher_student_link: { student_id: @teacher_student_link.student_id, teacher_id: @teacher_student_link.teacher_id, user_id: @teacher_student_link.user_id }
    end

    assert_redirected_to teacher_student_link_path(assigns(:teacher_student_link))
  end

  test "should show teacher_student_link" do
    get :show, id: @teacher_student_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_student_link
    assert_response :success
  end

  test "should update teacher_student_link" do
    put :update, id: @teacher_student_link, teacher_student_link: { student_id: @teacher_student_link.student_id, teacher_id: @teacher_student_link.teacher_id, user_id: @teacher_student_link.user_id }
    assert_redirected_to teacher_student_link_path(assigns(:teacher_student_link))
  end

  test "should destroy teacher_student_link" do
    assert_difference('TeacherStudentLink.count', -1) do
      delete :destroy, id: @teacher_student_link
    end

    assert_redirected_to teacher_student_links_path
  end
end
