class AddTeamsInPlayToRoundRobin < ActiveRecord::Migration
  def change
    add_column :round_robins, :teams_in_play, :string
  end
end
