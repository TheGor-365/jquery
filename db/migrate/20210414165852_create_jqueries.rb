class CreateJqueries < ActiveRecord::Migration[6.0]
  def change
    create_table :jqueries do |t|

      t.timestamps
    end
  end
end
