
class FoursquareService
  def self.places (*args)
    new.places(query: args.first[:query], city: args.first[:city])
  end

  def self.place(*args)
    new.place(args.first)
  end

  def places(query:, city:)
    @query = query
    @city = city
    venues.map { |venue| { name: venue[:name], fsq_id: venue[:id] } }
  end

  def place(venue_id)
    @venue_id = venue_id
    {
      name: venue[:name],
      address: venue[:location][:address],
      latitude: venue[:location][:lat],
      longitude: venue[:location][:lng],
      address: venue[:location][:address],
      city: City.where("name ILIKE ?", venue[:location][:city]).first,
      categories: venue_categories,
      photo: venue_photo
    }
  end

  private

  def venues
    client.search_venues(query: @query, near: @city)[:venues]
  end

  def venue
    @venue ||= client.venue(@venue_id)
  end

  def venue_categories
    venue[:categories].map { |c| c[:shortName] }
  end

  def venue_photo
    item = venue.photos.groups.first.items.first
    return nil unless item

    "#{item.prefix}original#{item.suffix}"
  end

  def client
    @client ||= Foursquare2::Client.new(
      client_id: ENV['FOURSQUARE_CLIENT_ID'],
      client_secret: ENV["FOURSQUARE_CLIENT_SECRET"],
      api_version: '20190603'
      )
  end
end
