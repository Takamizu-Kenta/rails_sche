class RenameEndDateColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :end_date, :end_date_at
  end
end
