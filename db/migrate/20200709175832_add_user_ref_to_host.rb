class AddUserRefToHost < ActiveRecord::Migration[6.0]
  def change
    add_reference :hosts, :user, null: false, foreign_key: true
  end
end
