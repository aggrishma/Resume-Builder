require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    fill_in "Beg", with: @profile.beg
    fill_in "Company", with: @profile.company
    fill_in "Degree", with: @profile.degree
    fill_in "Description", with: @profile.description
    fill_in "Edu des", with: @profile.edu_des
    fill_in "End", with: @profile.end
    fill_in "Expereince", with: @profile.expereince
    fill_in "Highlight", with: @profile.highlight
    fill_in "Job title", with: @profile.job_title
    fill_in "Last", with: @profile.last
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Position", with: @profile.position
    fill_in "Primary skill", with: @profile.primary_skill
    fill_in "Project des", with: @profile.project_des
    fill_in "School", with: @profile.school
    fill_in "Secondary skill", with: @profile.secondary_skill
    fill_in "Start", with: @profile.start
    fill_in "Tech stack", with: @profile.tech_stack
    fill_in "Title", with: @profile.title
    fill_in "Url", with: @profile.url
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    fill_in "Beg", with: @profile.beg
    fill_in "Company", with: @profile.company
    fill_in "Degree", with: @profile.degree
    fill_in "Description", with: @profile.description
    fill_in "Edu des", with: @profile.edu_des
    fill_in "End", with: @profile.end
    fill_in "Expereince", with: @profile.expereince
    fill_in "Highlight", with: @profile.highlight
    fill_in "Job title", with: @profile.job_title
    fill_in "Last", with: @profile.last
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Position", with: @profile.position
    fill_in "Primary skill", with: @profile.primary_skill
    fill_in "Project des", with: @profile.project_des
    fill_in "School", with: @profile.school
    fill_in "Secondary skill", with: @profile.secondary_skill
    fill_in "Start", with: @profile.start
    fill_in "Tech stack", with: @profile.tech_stack
    fill_in "Title", with: @profile.title
    fill_in "Url", with: @profile.url
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
