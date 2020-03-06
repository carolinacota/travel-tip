class AutocompleteSearchService

  def initialize(term)
    @term = term
  end

  def call
    { users: users, cities: cities, places: places }
  end

  private

  def users
     User.where("username ILIKE ?", "#{@term}%")
         .take(5)
         .map { |u| { name: u.username, slug: u.username } }
  end

  def cities
    City.where("name ILIKE ?", "#{@term}%")
        .take(5)
        .map { |c| { name: c.name, slug: c.slug } }
  end

  def places
    Place.where("name ILIKE ?", "#{@term}%")
        .take(5)
        .map { |p| { name: p.name, city: p.city.slug, slug: p.slug } }
  end
end
