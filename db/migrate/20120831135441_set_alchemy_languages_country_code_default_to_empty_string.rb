class SetAlchemyLanguagesCountryCodeDefaultToEmptyString < ActiveRecord::Migration
  def up
    remove_index(:alchemy_languages, [:language_code, :country_code])
    change_column :alchemy_languages, :country_code, :string, :default => '', :null => false
    add_index(:alchemy_languages, [:language_code, :country_code], :name => "add_index_to_alch_lang_lc_cc")
  end

  def down
    remove_index(:alchemy_languages, :name => "add_index_to_alch_lang_lc_cc")
    change_column :alchemy_languages, :country_code, :string, :default => nil, :null => true
    add_index(:alchemy_languages, [:language_code, :country_code])
  end
end
