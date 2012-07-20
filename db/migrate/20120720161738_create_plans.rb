class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.references  :user
      t.integer     :allowed_classrooms
      t.integer     :allowed_space
      t.date        :expires_in
      t.string      :slug

      t.timestamps
    end
    add_index :plans, :user_id
  end
end
