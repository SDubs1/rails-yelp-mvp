class AddRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :review, :rating, :integer
  end
end
