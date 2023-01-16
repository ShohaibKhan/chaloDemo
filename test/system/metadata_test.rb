require "application_system_test_case"

class MetadataTest < ApplicationSystemTestCase
  setup do
    @metadatum = metadata(:one)
  end

  test "visiting the index" do
    visit metadata_url
    assert_selector "h1", text: "Metadata"
  end

  test "should create metadatum" do
    visit metadata_url
    click_on "New metadatum"

    fill_in "Car", with: @metadatum.car_id
    fill_in "Pincode", with: @metadatum.pincode_id
    fill_in "Variant", with: @metadatum.variant_id
    fill_in "Waiting period", with: @metadatum.waiting_period
    click_on "Create Metadatum"

    assert_text "Metadatum was successfully created"
    click_on "Back"
  end

  test "should update Metadatum" do
    visit metadatum_url(@metadatum)
    click_on "Edit this metadatum", match: :first

    fill_in "Car", with: @metadatum.car_id
    fill_in "Pincode", with: @metadatum.pincode_id
    fill_in "Variant", with: @metadatum.variant_id
    fill_in "Waiting period", with: @metadatum.waiting_period
    click_on "Update Metadatum"

    assert_text "Metadatum was successfully updated"
    click_on "Back"
  end

  test "should destroy Metadatum" do
    visit metadatum_url(@metadatum)
    click_on "Destroy this metadatum", match: :first

    assert_text "Metadatum was successfully destroyed"
  end
end
