require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { date: @incident.date, guard_signature: @incident.guard_signature, location: @incident.location, officer_on_duty: @incident.officer_on_duty, responders_arrived_name: @incident.responders_arrived_name, responders_called: @incident.responders_called, supervisor_name: @incident.supervisor_name, time: @incident.time }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    patch :update, id: @incident, incident: { date: @incident.date, guard_signature: @incident.guard_signature, location: @incident.location, officer_on_duty: @incident.officer_on_duty, responders_arrived_name: @incident.responders_arrived_name, responders_called: @incident.responders_called, supervisor_name: @incident.supervisor_name, time: @incident.time }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
