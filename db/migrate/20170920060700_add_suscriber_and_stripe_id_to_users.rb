class AddSuscriberAndStripeIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :subscribed, :boolean
    add_column :users, :stripeid, :string
  end
end
