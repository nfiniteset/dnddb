class DomainLevel < ActiveRecord::Base
  belongs_to :spell

  attr_accessible :name, :level
end