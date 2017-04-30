require 'test_helper'

class StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_url
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post staffs_url, params: { staff: { appointment_date: @staff.appointment_date, date_join: @staff.date_join, date_of_birth: @staff.date_of_birth, disability: @staff.disability, disability_desc: @staff.disability_desc, employee_id: @staff.employee_id, first_name: @staff.first_name, gender: @staff.gender, image: @staff.image, is_active: @staff.is_active, last_name: @staff.last_name, middle_name: @staff.middle_name, rank: @staff.rank, registered_no: @staff.registered_no, religious_denomination: @staff.religious_denomination, sssnit_no: @staff.sssnit_no, staff_category_id: @staff.staff_category_id, staff_department_id: @staff.staff_department_id, title: @staff.title, user_id: @staff.user_id } }
    end

    assert_redirected_to staff_url(Staff.last)
  end

  test "should show staff" do
    get staff_url(@staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_url(@staff)
    assert_response :success
  end

  test "should update staff" do
    patch staff_url(@staff), params: { staff: { appointment_date: @staff.appointment_date, date_join: @staff.date_join, date_of_birth: @staff.date_of_birth, disability: @staff.disability, disability_desc: @staff.disability_desc, employee_id: @staff.employee_id, first_name: @staff.first_name, gender: @staff.gender, image: @staff.image, is_active: @staff.is_active, last_name: @staff.last_name, middle_name: @staff.middle_name, rank: @staff.rank, registered_no: @staff.registered_no, religious_denomination: @staff.religious_denomination, sssnit_no: @staff.sssnit_no, staff_category_id: @staff.staff_category_id, staff_department_id: @staff.staff_department_id, title: @staff.title, user_id: @staff.user_id } }
    assert_redirected_to staff_url(@staff)
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete staff_url(@staff)
    end

    assert_redirected_to staffs_url
  end
end
