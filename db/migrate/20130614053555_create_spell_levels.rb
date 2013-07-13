class CreateSpellLevels < ActiveRecord::Migration
  def up

    create_table :spell_levels do |t|
      t.references :spell
      t.references :spell_class, polymorphic: true
      t.integer :level
    end

    Domain.new do |d|
      d.name = 'None'
      d.save!
    end

    Spell.all.each do |spell|
      migrate_level_to_spell_level(spell)
    end
  end

  def down
    drop_table :spell_levels

    Domain.where(name: 'None').destroy_all
  end
end

def migrate_level_to_spell_level(spell)
  build_spell_levels(spell)
  spell.save!
end

def build_spell_levels(spell)
  spell_levels_attrs = SpellSerializer.new(spell).serializable_hash[:level]
  spell_levels_attrs.each do |name, level|
    build_spell_level(spell, name, level)
  end
end

def build_spell_level(spell, name, level)
  spell_class = CharacterClass.where(name: name).first
  spell_class ||= Domain.where(name: name).first
  puts "SpellClass #{ name } could not be found." unless spell_class

  spell.spell_levels.new do |sl|
    sl.spell_class = spell_class
    sl.level = level
    sl.save!
  end
end