class Point < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '１０' },
    { id: 3, name: '９' },
    { id: 4, name: '８' },
    { id: 5, name: '７' },
    { id: 6, name: '６' },
    { id: 7, name: '５' },
    { id: 8, name: '４' },
    { id: 9, name: '３' },
    { id: 10, name: '２' },
    { id: 11, name: '１' }
  ]

  include ActiveHash::Associations
  has_many :games
end
