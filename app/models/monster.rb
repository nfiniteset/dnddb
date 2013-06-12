# == Schema Information
#
# Table name: monsters
#
#  id                :integer          not null, primary key
#  family            :string
#  name              :string           not null
#  altname           :string
#  size              :string
#  type              :string
#  descriptor        :string
#  hit_dice          :string
#  initiative        :string
#  speed             :string
#  armor_class       :string
#  base_attack       :string
#  grapple           :string
#  attack            :string
#  full_attack       :text
#  space             :string
#  reach             :string
#  special_attacks   :string
#  special_qualities :text
#  saves             :string
#  abilities         :string
#  skills            :text
#  bonus_feats       :string
#  feats             :text
#  epic_feats        :text
#  environment       :string
#  organization      :text
#  challenge_rating  :string
#  treasure          :string
#  alignment         :string
#  advancement       :string
#  level_adjustment  :string
#  special_abilities :text
#  stat_block        :text
#  full_text         :text
#  reference         :string
#

class Monster < ActiveRecord::Base

end
