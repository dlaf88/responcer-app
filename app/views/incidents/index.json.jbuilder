json.array!(@incidents) do |incident|
  json.extract! incident, :id, :location, :date, :time, :officer_on_duty, :responders_called, :responders_arrived_name, :guard_signature, :supervisor_name
  json.url incident_url(incident, format: :json)
end
