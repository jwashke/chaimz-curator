class Artist < OpenStruct

  def self.service
    ChaimzService.new
  end

  def self.find(id)
    artist_hash = service.artist_hash(id)
    Artist.new(artist_hash)
  end

  def self.all
    artists_hash = service.artists_hash
    artists_hash.map { |artist_hash| Artist.new(artist_hash) }
  end
end
