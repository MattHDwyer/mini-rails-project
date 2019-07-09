# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Album.delete_all
Artist.delete_all
Track.delete_all

artists = [
    {
        name: "Beyonce",
        year_of_birth: 1981,
        active: true
    },
    {
        name: "Tracy Chapman",
        year_of_birth: 1964,
        active: true
    },
    {
        name: "Bob Marley",
        year_of_birth: 1945,
        active: false
    }
]

albums = [
    {
        title: 'Lemonade',
        year: 2016,
        length: 2742,
        artist: "Beyonce"
    },
    {
        title: 'I Am... Sasha Fierce',
        year: 2008,
        length: 2496,
        artist: "Beyonce"
    },
    {
        title: 'Exodus',
        year: 1977,
        length: 2244,
        artist: "Bob Marley"
    }
]

tracks = [
    {
        title: 'If I Were a Boy',
        length: 249,
        album: "I Am... Sasha Fierce",
    },
    {
        title: 'Halo',
        length: 261,
        album: "I Am... Sasha Fierce",
    },
    {
        title: 'Broken-Hearted Girl',
        length: 277,
        album: "I Am... Sasha Fierce",
    },
    {
        title: 'Single Ladies (Put a Ring on It)',
        length: 193,
        album: "I Am... Sasha Fierce",
    },
    {
        title: "Three Little Birds",
        length: 180,
        album: "Exodus"
    },
    {
        title: "6 Inch",
        length: 260,
        album: "Lemonade",
    },
    {
        title: "Daddy Lessons",
        length: 287,
        album: "Lemonade",
    },

]

artists.each do |artist|
    new_artist = Artist.new()
    new_artist.name = artist[:name]
    new_artist.year_of_birth = artist[:year_of_birth]
    new_artist.active = artist[:active]
    new_artist.save!
end

albums.each do |album|
    new_album = Album.new()
    new_album.title = album[:title]
    new_album.year = album[:year]
    new_album.length = album[:length]
    new_album.artist = Artist.find_by(name: album[:artist])
    new_album.save!
end

tracks.each do |track|
    new_track = Track.new()
    new_track.title = track[:title]
    new_track.length = track[:length]
    
    # new_track.album = Album.find_by(title: track[:album]).tracks << new_track

    Album.find_by(title: track[:album]).tracks << new_track
end

    