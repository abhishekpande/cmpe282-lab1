class CreateComputercatalogs < ActiveRecord::Migration
  def change
    create_table :computercatalogs do |t|

      t.timestamps
    end
  end
end
