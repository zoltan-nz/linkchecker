class Link < ActiveRecord::Base
  belongs_to :page

  attr_accessible :anchortext, :crawled, :outbound, :page_id, :targetpageid
end
