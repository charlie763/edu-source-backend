class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.integer :lowerGradeBound
      t.integer :upperGradeBound
      t.string :subject
      t.string :url
      t.string :videoUrl
      t.integer :rating
    end
  end
end
