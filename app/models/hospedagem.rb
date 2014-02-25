class Hospedagem < ActiveRecord::Base
  belongs_to :conta
  belongs_to :hospede
  belongs_to :aposento
end
