cask "drplayer" do
  version "1.9.0"
  sha256 "a59e01388be794e6b6599dc8bd66e4270aafd197c4eb8bb03bf70c06f0450f8b"

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
