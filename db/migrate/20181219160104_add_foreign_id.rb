class AddForeignId < ActiveRecord::Migration[5.1]
  def change
    change_table :employees do |t|
      t.belongs_to :dog, foreign_key: true
    end
  end
end
