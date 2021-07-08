class Book < ApplicationRecord
  belongs_to :adviser, optional: true
  belongs_to :root, class_name: 'Book', foreign_key: 'root_id', optional: true
  belongs_to :parent, class_name: 'Book', foreign_key: 'parent_id', optional: true
  validates :title, presence: true
  validates :body, presence: true
end
