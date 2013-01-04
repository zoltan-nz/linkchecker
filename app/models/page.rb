class Page < ActiveRecord::Base
  belongs_to :domain
  has_many :links

  attr_accessible :domain_id, :title, :url, :indexpage

  def self.downloadlinks(page)
    website = Domain.find(page.domain_id).url
    url = ''
    unless page.url =~ %r(^http)
      url = website + page.url
    else
      url = page.url
    end
    Mecha.links(url).each do |l|
      next if l.href == '#'
      new_link = Link.new
      new_link.page_id = page.id
      new_link.anchortext = l.text

      #If link is "http://someting.com/something" but not website then it is an outbound link
      if l.href =~ %r(^http) && !(l.href =~ %r(#{website}))
        new_link.outbound =  true
        new_link.href = l.href
      else
        new_link.href = website + l.href.split(website).last
      end
      new_link.save
    end
  end
end
