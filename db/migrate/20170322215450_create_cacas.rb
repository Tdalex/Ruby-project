class CreateCacas < ActiveRecord::Migration[5.0]
  def change
    create_table :cacas do |t|

      t.timestamps
    end
  end
end
