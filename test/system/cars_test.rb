require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
    @brand = brands(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "should create car" do
    visit cars_url
    click_on "New car"

    fill_in "Car brand", with: @brand.brand_id
    fill_in "Car", with: @car.car_id
    fill_in "Car name", with: @car.car_name
    fill_in "Launch date", with: @car.launch_date
    check "Launched" if @car.launched
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "should update Car" do
    visit car_url(@car)
    click_on "Edit this car", match: :first

    fill_in "Car brand", with: @brand.brand_id
    fill_in "Car", with: @car.car_id
    fill_in "Car name", with: @car.car_name
    fill_in "Launch date", with: @car.launch_date
    check "Launched" if @car.launched
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "should destroy Car" do
    visit car_url(@car)
    click_on "Destroy this car", match: :first

    assert_text "Car was successfully destroyed"
  end
end
