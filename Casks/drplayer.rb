cask "drplayer" do
  version "1.8.1"
  sha256 "406c202ed9cfd28b7f6d6c8cf9004bc1c4a324fae4f02406d9e3669815202d9c"

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
