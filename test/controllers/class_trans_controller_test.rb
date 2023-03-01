require 'test_helper'

class ClassTransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_tran = class_trans(:one)
  end

  test 'should get index' do
    get class_trans_url
    assert_response :success
  end

  test 'should get new' do
    get new_class_tran_url
    assert_response :success
  end

  test 'should create class_tran' do
    assert_difference('ClassTran.count') do
      post class_trans_url, params: { class_tran: {} }
    end

    assert_redirected_to class_tran_url(ClassTran.last)
  end

  test 'should show class_tran' do
    get class_tran_url(@class_tran)
    assert_response :success
  end

  test 'should get edit' do
    get edit_class_tran_url(@class_tran)
    assert_response :success
  end

  test 'should update class_tran' do
    patch class_tran_url(@class_tran), params: { class_tran: {} }
    assert_redirected_to class_tran_url(@class_tran)
  end

  test 'should destroy class_tran' do
    assert_difference('ClassTran.count', -1) do
      delete class_tran_url(@class_tran)
    end

    assert_redirected_to class_trans_url
  end
end
