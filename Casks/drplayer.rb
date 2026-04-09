cask "drplayer" do
  version "1.8.9"
  sha256 "bb4fd8c31a545130e3b6d47fe1fff4d0535bd2fab7c4d8bfc5d15433af99e340"

  url "https://drplayer.priet.us/downloads/DrPlayer-#{version}.dmg"
  name "DrPlayer"
  desc "Audiophile music player for MPD"
  homepage "https://drplayer.priet.us"

  depends_on formula: "mpd"
  depends_on formula: "ffmpeg"
  depends_on macos: ">= :sonoma"

  app "DrPlayer.app"

  zap trash: [
    "~/.drplayer",
  ]
end
