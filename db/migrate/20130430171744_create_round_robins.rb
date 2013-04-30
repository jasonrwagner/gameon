class CreateRoundRobins < ActiveRecord::Migration
  def change
    create_table :round_robins do |t|

      t.timestamps
    end
  end
end
