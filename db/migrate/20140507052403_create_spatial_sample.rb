class CreateSpatialSample < ActiveRecord::Migration
  def change
    create_table :my_spatial_tables, :options => 'ENGINE=MyISAM' do |t|
      t.column :latlon, :point, :null => false
    end
    change_table :my_spatial_tables do |t|
      t.index :latlon, :spatial => true
    end
  end
end
