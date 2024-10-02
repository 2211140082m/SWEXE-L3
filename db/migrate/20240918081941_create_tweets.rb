class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :message
      t.datetime :tdate
      t.timestamps
    end
  end
end
