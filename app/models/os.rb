class Os < ActiveHash::Base
  include ActiveHash::Associations
  has_many :games

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'PCゲーム' },
    { id: 3, name: 'ソーシャルゲーム' },
    { id: 4, name: 'コンシューマーゲーム' }
  ]
  end