class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives, dependent: :destroy
  has_many :answer
  accepts_nested_attributes_for :alternatives, reject_if: :all_blank, allow_destroy: true

  enum tipos: { 
    matematica: 'Matemática', 
    geografia: 'Geografia', 
    historia: 'História',
    biologia: 'Biologia',
    filosogia: 'Filosofia',
    fisica: 'Física',
    quimica: 'Química',
    literatura: 'Literatura',
  }

  validates :description, :area_conhecimento, presence:true
end
