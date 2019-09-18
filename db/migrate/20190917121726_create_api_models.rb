class CreateApiModels < ActiveRecord::Migration[5.2]
  def change
    create_table :api_models do |t|
      t.string :name
      t.string :api_url
      t.string :api_key
      t.timestamps
    end
  end
end
