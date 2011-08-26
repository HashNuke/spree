class AddBushidoAuthenticatable < ActiveRecord::Migration
  def up
    add_column :users, :bushido_authenticatable
  end
  
  def down
  end
end

