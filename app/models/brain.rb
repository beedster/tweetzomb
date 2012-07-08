class Brain < ActiveRecord::Base
	belongs_to :zombie, dependent: :destroy
end
