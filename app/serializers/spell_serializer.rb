class SpellSerializer < ActiveModel::Serializer
  attributes :name, :altname,
    :school,
    :subschool,
    :descriptor,
    :spellcraft_dc,
    :level,
    :components,
    :casting_time,
    :range,
    :target,
    :area,
    :effect,
    :duration,
    :saving_throw,
    :spell_resistance,
    :short_description,
    :to_develop,
    :material_components,
    :arcane_material_components,
    :focus,
    :xp_cost,
    :arcane_focus,
    :wizard_focus,
    :verbal_components,
    :sorcerer_focus,
    :bard_focus,
    :cleric_focus,
    :druid_focus,
    :reference

  def level
    levels = object.level.split(/,/)

    levels.reduce({}) do |memo, l|
      spell_classes, level = l.split(' ')
      spell_classes = spell_classes.split('/')
      spell_classes.each do |spell_class|
        memo[spell_class] = level
      end
      memo
    end
  end

end
