# == Schema Information
#
# Table name: feats
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  type         :string
#  multiple     :string
#  stack        :string
#  choice       :string
#  prerequisite :text
#  benefit      :text
#  normal       :text
#  special      :text
#  full_text    :text
#  reference    :string
#

class Feat < ActiveRecord::Base

end
