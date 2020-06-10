class CreateFurkans < ActiveRecord::Migration[5.2]
  def change
    create_table :furkans do |t|

      t.timestamps
    end
  end
end
