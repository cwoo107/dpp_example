require "application_system_test_case"

class WebhooksTest < ApplicationSystemTestCase
  setup do
    @webhook = webhooks(:one)
  end

  test "visiting the index" do
    visit webhooks_url
    assert_selector "h1", text: "Webhooks"
  end

  test "should create webhook" do
    visit webhooks_url
    click_on "New webhook"

    fill_in "Body", with: @webhook.body
    click_on "Create Webhook"

    assert_text "Webhook was successfully created"
    click_on "Back"
  end

  test "should update Webhook" do
    visit webhook_url(@webhook)
    click_on "Edit this webhook", match: :first

    fill_in "Body", with: @webhook.body
    click_on "Update Webhook"

    assert_text "Webhook was successfully updated"
    click_on "Back"
  end

  test "should destroy Webhook" do
    visit webhook_url(@webhook)
    click_on "Destroy this webhook", match: :first

    assert_text "Webhook was successfully destroyed"
  end
end
