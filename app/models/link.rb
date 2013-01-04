class Link < ActiveRecord::Base
  belongs_to :page

  attr_accessible :anchortext, :crawled, :outbound, :page_id, :targetpageid, :href

  validates :href, :uniqueness => true

  def self.downloadpage(link)
    Mecha.(link.href)
  end

end
