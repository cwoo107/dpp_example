require "application_system_test_case"

class PositiveResponsesTest < ApplicationSystemTestCase
  setup do
    @positive_response = positive_responses(:one)
  end

  test "visiting the index" do
    visit positive_responses_url
    assert_selector "h1", text: "Positive responses"
  end

  test "should create positive response" do
    visit positive_responses_url
    click_on "New positive response"

    fill_in "Accountnameofpositiveresponseprovider", with: @positive_response.accountNameOfPositiveResponseProvider
    check "Isnotevisibletocontractor" if @positive_response.isNoteVisibleToContractor
    fill_in "Locatecode", with: @positive_response.locateCode
    fill_in "Reason", with: @positive_response.reason
    fill_in "Server response", with: @positive_response.server_response
    fill_in "Station", with: @positive_response.station
    fill_in "Ticket", with: @positive_response.ticket_id
    click_on "Create Positive response"

    assert_text "Positive response was successfully created"
    click_on "Back"
  end

  test "should update Positive response" do
    visit positive_response_url(@positive_response)
    click_on "Edit this positive response", match: :first

    fill_in "Accountnameofpositiveresponseprovider", with: @positive_response.accountNameOfPositiveResponseProvider
    check "Isnotevisibletocontractor" if @positive_response.isNoteVisibleToContractor
    fill_in "Locatecode", with: @positive_response.locateCode
    fill_in "Reason", with: @positive_response.reason
    fill_in "Server response", with: @positive_response.server_response
    fill_in "Station", with: @positive_response.station
    fill_in "Ticket", with: @positive_response.ticket_id
    click_on "Update Positive response"

    assert_text "Positive response was successfully updated"
    click_on "Back"
  end

  test "should destroy Positive response" do
    visit positive_response_url(@positive_response)
    click_on "Destroy this positive response", match: :first

    assert_text "Positive response was successfully destroyed"
  end
end
