class UpdateLastSeenByDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :last_seen, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
