class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to   :user, index: true, foreign_key: true
      t.belongs_to   :restaurant, index: true, foreign_key: true
      t.integer      :member_count
      t.datetime     :visit_at
      t.string       :menu

      t.timestamps null: false
    end
  end
end
