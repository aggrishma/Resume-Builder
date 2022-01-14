require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { beg: @profile.beg, company: @profile.company, degree: @profile.degree, description: @profile.description, edu_des: @profile.edu_des, end: @profile.end, expereince: @profile.expereince, highlight: @profile.highlight, job_title: @profile.job_title, last: @profile.last, name: @profile.name, overview: @profile.overview, position: @profile.position, primary_skill: @profile.primary_skill, project_des: @profile.project_des, school: @profile.school, secondary_skill: @profile.secondary_skill, start: @profile.start, tech_stack: @profile.tech_stack, title: @profile.title, url: @profile.url } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { beg: @profile.beg, company: @profile.company, degree: @profile.degree, description: @profile.description, edu_des: @profile.edu_des, end: @profile.end, expereince: @profile.expereince, highlight: @profile.highlight, job_title: @profile.job_title, last: @profile.last, name: @profile.name, overview: @profile.overview, position: @profile.position, primary_skill: @profile.primary_skill, project_des: @profile.project_des, school: @profile.school, secondary_skill: @profile.secondary_skill, start: @profile.start, tech_stack: @profile.tech_stack, title: @profile.title, url: @profile.url } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference("Profile.count", -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
