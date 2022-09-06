require "test_helper"

class PositiveResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @positive_response = positive_responses(:one)
  end

  test "should get index" do
    get positive_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_positive_response_url
    assert_response :success
  end

  test "should create positive_response" do
    assert_difference("PositiveResponse.count") do
      post positive_responses_url, params: { positive_response: { accountNameOfPositiveResponseProvider: @positive_response.accountNameOfPositiveResponseProvider, isNoteVisibleToContractor: @positive_response.isNoteVisibleToContractor, locateCode: @positive_response.locateCode, reason: @positive_response.reason, server_response: @positive_response.server_response, station: @positive_response.station, ticket_id: @positive_response.ticket_id } }
    end

    assert_redirected_to positive_response_url(PositiveResponse.last)
  end

  test "should show positive_response" do
    get positive_response_url(@positive_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_positive_response_url(@positive_response)
    assert_response :success
  end

  test "should update positive_response" do
    patch positive_response_url(@positive_response), params: { positive_response: { accountNameOfPositiveResponseProvider: @positive_response.accountNameOfPositiveResponseProvider, isNoteVisibleToContractor: @positive_response.isNoteVisibleToContractor, locateCode: @positive_response.locateCode, reason: @positive_response.reason, server_response: @positive_response.server_response, station: @positive_response.station, ticket_id: @positive_response.ticket_id } }
    assert_redirected_to positive_response_url(@positive_response)
  end

  test "should destroy positive_response" do
    assert_difference("PositiveResponse.count", -1) do
      delete positive_response_url(@positive_response)
    end

    assert_redirected_to positive_responses_url
  end
end
