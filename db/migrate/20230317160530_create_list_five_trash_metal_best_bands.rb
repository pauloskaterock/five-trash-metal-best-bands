class CreateListFiveTrashMetalBestBands < ActiveRecord::Migration[7.0]
  def change
    create_table :list_five_trash_metal_best_bands do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
