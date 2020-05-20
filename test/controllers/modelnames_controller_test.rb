require 'test_helper'

class ModelnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modelname = modelnames(:one)
  end

  test "should get index" do
    get modelnames_url
    assert_response :success
  end

  test "should get new" do
    get new_modelname_url
    assert_response :success
  end

  test "should create modelname" do
    assert_difference('Modelname.count') do
      post modelnames_url, params: { modelname: { fieldone: @modelname.fieldone, fieldthree: @modelname.fieldthree, fieldtwo: @modelname.fieldtwo } }
    end

    assert_redirected_to modelname_url(Modelname.last)
  end

  test "should show modelname" do
    get modelname_url(@modelname)
    assert_response :success
  end

  test "should get edit" do
    get edit_modelname_url(@modelname)
    assert_response :success
  end

  test "should update modelname" do
    patch modelname_url(@modelname), params: { modelname: { fieldone: @modelname.fieldone, fieldthree: @modelname.fieldthree, fieldtwo: @modelname.fieldtwo } }
    assert_redirected_to modelname_url(@modelname)
  end

  test "should destroy modelname" do
    assert_difference('Modelname.count', -1) do
      delete modelname_url(@modelname)
    end

    assert_redirected_to modelnames_url
  end
end
