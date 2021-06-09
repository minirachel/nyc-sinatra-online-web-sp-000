class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  def slug
    self.name.parameterize
  end

  def self.find_by_slug(slug)
      self.all.find {|f| f.slug == slug}
  end
end
