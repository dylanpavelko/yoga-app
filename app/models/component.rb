class Component < ApplicationRecord
  belongs_to :parent, polymorphic: true
  belongs_to :content, polymorphic: true
end
