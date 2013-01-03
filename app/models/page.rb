class Page < ActiveRecord::Base
  belongs_to :domain
  has_many :links

  attr_accessible :domain_id, :title, :url, :indexpage
end
