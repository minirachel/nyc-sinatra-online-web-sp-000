class LandmarksController < ApplicationController
  def slug
    self.name.parameterize
  end

  def self.find_by_slug(slug)
      self.all.find {|l| l.slug == slug}
  end
end
