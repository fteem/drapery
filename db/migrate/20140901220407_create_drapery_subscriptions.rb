class CreateDraperySubscriptions < ActiveRecord::Migration
  def change
    create_table :drapery_subscriptions do |t|
      t.string :email

      t.timestamps
    end
  end
end
