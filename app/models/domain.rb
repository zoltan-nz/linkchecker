class Domain < ActiveRecord::Base
  has_many :pages

  attr_accessible :title, :url
end
