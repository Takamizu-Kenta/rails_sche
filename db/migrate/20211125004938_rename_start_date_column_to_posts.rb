class RenameStartDateColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :start_date, :start_date_at
  end
end
