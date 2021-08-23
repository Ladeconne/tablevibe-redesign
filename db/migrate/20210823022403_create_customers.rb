class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :job_title
      t.string :company
      t.string :testimonial

      t.timestamps
    end
  end
end
