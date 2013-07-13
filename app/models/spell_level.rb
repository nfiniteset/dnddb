# == Schema Information
#
# Table name: spell_levels
#
#  id               :integer          not null, primary key
#  spell_id         :integer
#  spell_class_id   :integer
#  spell_class_type :string(255)
#  level            :integer
#

class SpellLevel < ActiveRecord::Base
  belongs_to :spell_class, polymorphic: true
  belongs_to :spell
end
