cask "drplayer" do
  version "1.8.0"
  sha256 "5bd1d1d4c6a877f8aad8da08d790329a3c9119e364f4c69e51287c6b532ccb21"

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
