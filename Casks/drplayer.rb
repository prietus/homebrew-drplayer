cask "drplayer" do
  version "1.9.2"
  sha256 "4beb51c51e29391070409bcc7203d5948a4b5898d2462018e3f419743274885e"

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
