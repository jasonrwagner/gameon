class AddTournamentIdToTeam < ActiveRecord::Migration
  def change
  	add_column :teams, :tournament_id, :integer
  end
end
