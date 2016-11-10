# This migration comes from bulletin_board (originally 20161110112310)
class CreateBulletinBoardComments < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletin_board_comments do |t|
      t.string :text
      t.integer :board_id

      t.timestamps
    end
  end
end
