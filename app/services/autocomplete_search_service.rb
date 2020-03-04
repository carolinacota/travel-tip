class AutocompleteSearchService

  def initialize(term)
    @term = term
  end

  def call
    { users: users, cities: cities }
  end

  private

  def users
     User.where("username ILIKE ?", "#{@term}%").map(&:username).take(5)
  end

  def cities
    City.where("name ILIKE ?", "#{@term}%").map(&:name).take(5)
  end
end
