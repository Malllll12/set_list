require 'rails_helper'

RSpec.describe 'the songs show page'do
  it 'displays song title' do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:21456357)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays song artist' do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:21456357)
    visit "/songs/#{song.id}"
    expect(page).to have_content(artist.name)
  end

#   As a [user]
# When I visit a Song show page
# Then I see the song's title, length, and play count
#
# I click link to song
# I see title, length, play count

expect(page).to have_content(song.)

# As a user
# When I visit a Song show page
# I see a link back to the songs index page
# When I click this link
# Then I am taken to the songs index
#
# I click link
# I see a link to homepage
# When I click this link
# I return to home

# As a user
# When I visit an Artist's show page
# Then I see the Artist's name
# And I see the Artist's average song lenth
# And I see the Artist's total song count
#
# I visit artist's page
# I see Artist name, avg. song length, total song count

end
