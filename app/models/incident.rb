class Incident < ActiveRecord::Base
  has_one :alarm_company
  has_one :police
  has_one :suspect
  has_one :other_party
  has_many :incident_and_causes
  has_many :incident_causes, through: :incident_and_causes
  accepts_nested_attributes_for :alarm_company,:police,:suspect,:other_party
end
