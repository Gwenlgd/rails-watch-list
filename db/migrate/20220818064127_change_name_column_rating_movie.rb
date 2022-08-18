class ChangeNameColumnRatingMovie < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :raiting, :rating
  end
end
