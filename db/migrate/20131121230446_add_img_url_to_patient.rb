class AddImgUrlToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :img_url, :string
  end
end
