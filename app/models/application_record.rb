class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def to_slug(string)
    string.parameterize
  end
end
