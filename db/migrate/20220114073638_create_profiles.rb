class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :job_title
      t.string :expereince
      t.string :overview
      t.string :highlight
      t.string :primary_skill
      t.string :secondary_skill
      t.string :company
      t.string :position
      t.date :start
      t.date :end
      t.string :description
      t.string :title
      t.string :url
      t.string :tech_stack
      t.string :project_des
      t.string :school
      t.string :degree
      t.string :beg
      t.string :last
      t.string :edu_des

      t.timestamps
    end
  end
end
