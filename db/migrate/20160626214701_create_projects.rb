class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
    end
  end
end
