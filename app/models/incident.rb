class Incident < ActiveRecord::Base
  has_one :alarm_company
  has_one :police
  has_many :suspects
  has_many :other_parties
  has_many :incident_and_causes
  has_many :incident_causes, through: :incident_and_causes
  accepts_nested_attributes_for :alarm_company,:police
  accepts_nested_attributes_for :suspects,:other_parties,:reject_if => :all_blank
end
