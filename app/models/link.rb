class Link < ActiveRecord::Base
  attr_accessible :anchortext, :crawled, :outbound, :page_id, :targetpageid
end
