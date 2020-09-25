class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :order,                       null: false, foreign_key: true
      t.string     :post_code,      default: "", null: false
      t.integer    :prefectures_id,              null: false
      t.string     :municipality,   default: "", null: false
      t.string     :address,        default: "", null: false
      t.string     :building,       default: ""
      t.string     :phone_number,   default: "", null: false
      t.timestamps
    end
  end
end
