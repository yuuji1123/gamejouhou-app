class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'ロールプレイング' },
    { id: 4, name: 'シミュレーション' },
    { id: 5, name: 'アドベンチャー' },
    { id: 6, name: 'シューティング' },
    { id: 7, name: 'パズル' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: '音楽' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :games

end
