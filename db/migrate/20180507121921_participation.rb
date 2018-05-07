class Participation < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :user_id, :integer
    add_column :participations, :event_id, :integer

  end
end
