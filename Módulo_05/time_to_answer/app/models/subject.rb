class Subject < ApplicationRecord
   has_many :questions, dependent: :destroy
end
