# == Schema Information
#
# Table name: player_classes
#
#  id                     :integer          not null, primary key
#  name                   :string           not null
#  type                   :string
#  alignment              :string
#  hit_die                :string
#  class_skills           :text
#  skill_points           :string
#  skill_points_ability   :string
#  spell_stat             :string
#  proficiencies          :text
#  spell_type             :string
#  epic_feat_base_level   :string
#  epic_feat_interval     :string
#  epic_feat_list         :text
#  epic_full_text         :text
#  req_race               :string
#  req_weapon_proficiency :string
#  req_base_attack_bonus  :string
#  req_skill              :string
#  req_feat               :string
#  req_spells             :string
#  req_languages          :string
#  req_psionics           :string
#  req_epic_feat          :string
#  req_special            :string
#  spell_list_1           :text
#  spell_list_2           :string
#  spell_list_3           :string
#  spell_list_4           :string
#  spell_list_5           :string
#  full_text              :text
#  reference              :string
#

class PlayerClass < ActiveRecord::Base

end
