Rails.application.routes.draw do
  mount BulletinBoard::Engine => "/bulletin_board"
end
