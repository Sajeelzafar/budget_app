require "application_system_test_case"

class ClassTransTest < ApplicationSystemTestCase
  setup do
    @class_tran = class_trans(:one)
  end

  test "visiting the index" do
    visit class_trans_url
    assert_selector "h1", text: "Class trans"
  end

  test "should create class tran" do
    visit class_trans_url
    click_on "New class tran"

    click_on "Create Class tran"

    assert_text "Class tran was successfully created"
    click_on "Back"
  end

  test "should update Class tran" do
    visit class_tran_url(@class_tran)
    click_on "Edit this class tran", match: :first

    click_on "Update Class tran"

    assert_text "Class tran was successfully updated"
    click_on "Back"
  end

  test "should destroy Class tran" do
    visit class_tran_url(@class_tran)
    click_on "Destroy this class tran", match: :first

    assert_text "Class tran was successfully destroyed"
  end
end
