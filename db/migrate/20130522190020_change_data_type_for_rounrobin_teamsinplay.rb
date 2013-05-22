class ChangeDataTypeForRounrobinTeamsinplay < ActiveRecord::Migration
  def change
  	change_table :round_robins do |t|  
      t.change :teams_in_play, :text
    end 
  end
end
