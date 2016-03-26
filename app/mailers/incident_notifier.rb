class IncidentNotifier < ApplicationMailer
  default :from => 'info@responcer.co'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def incident_sent(incident)
    @incident = incident
    mail( :to => 'dfl2109@columbia.edu',
    :subject => 'A Guard has made an incident report' )
  end
end
