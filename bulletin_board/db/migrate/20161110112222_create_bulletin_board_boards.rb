class CreateBulletinBoardBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletin_board_boards do |t|
      t.string :title

      t.timestamps
    end
  end
end
