cask "drplayer" do
  version "1.7.0"
  sha256 "4e5d8123d249797c442725082fdf6a7f41f33b9c2c9755e494ab18ed3547a7b3"

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
