class CreateSelectedApis < ActiveRecord::Migration[5.2]
  def change
    create_table :selected_apis do |t|
      t.belongs_to :user
      t.string :name
      t.string :api_url
      t.string :api_key
      t.timestamps
    end
  end
end
