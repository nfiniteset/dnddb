class SpellExporter
  def initialize(spell)
    @spell = spell
  end

  def export
    ensure_directory(export_directory)
    File.open(file_path, 'w') do |f|
      f.write(spell_data)
    end
  end

  private

  def export_directory
    "#{Rails.root}/public/spells/"
  end

  def file_name
    @spell.name.parameterize.underscore
  end

  def file_path
    "#{export_directory}#{file_name}.yml"
  end

  def ensure_directory(directory_name)
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
  end

  def spell_data
    SpellSerializer.new(@spell).serializable_hash.to_yaml
  end
end