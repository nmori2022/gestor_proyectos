class Project < ApplicationRecord

    validates :name, :description, presence: true

    enum state: [:proposal, :in_progress, :finished]

end
