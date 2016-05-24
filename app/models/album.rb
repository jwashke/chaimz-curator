class Album < OpenStruct
  def self.service
    AlbumService.new
  end

  def self.find(id)
    album_hash = service.album_hash(id)
    Album.new(album_hash)
  end

  def self.all
    albums_hash = service.albums_hash
    albums_hash.map { |album_hash| Album.new(album_hash) }
  end
end
