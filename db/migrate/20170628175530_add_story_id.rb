class AddStoryId < ActiveRecord::Migration[5.1]
  def change
    add_column(:usersentences, :story_id, :integer)
  end
end
