class CreateDomainLevels < ActiveRecord::Migration
  def up
    create_table :domain_levels do |t|
      t.references :spell
      t.string :name
      t.integer :level
    end

    Spell.all.each do |spell|
      migrate_level_to_domains(spell)
    end
  end

  def down
    drop_table :domain_levels
  end
end

def migrate_level_to_domains(spell)
  spell.domains = domains_from_level(spell.level)
  spell.save!
end

def domains_from_level(level_str)
  levels = level_str.split(/,/)
  domains = levels.map! do |l|
    if l.match('/')
      level = l.split(' ').last
      domains = l.split('/')
      domains.map do |d|
        name = d.split(' ').first
        DomainLevel.create name: name, level: level
      end
    else
      name, level = l.split(' ')
      DomainLevel.create name: name, level: level
    end
  end
  domains.flatten
end
