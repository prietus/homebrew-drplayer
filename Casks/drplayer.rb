cask "drplayer" do
  version "1.11.3"
  sha256 "68adc1f85794b4174da320692d5b8b743364117c1be4582b238ef99a34884949"

  url "https://github.com/prietus/drplayer/releases/download/v#{version}/DrPlayer-#{version}.dmg"
  name "DrPlayer"
  desc "Audiophile music player for MPD"
  homepage "https://drplayer.priet.us"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "ffmpeg"
  depends_on macos: :sonoma

  app "DrPlayer.app"

  zap trash: [
    "~/.drplayer",
    "~/Library/Preferences/com.drplayer.app.plist",
  ]

  caveats <<~EOS
    DrPlayer needs an MPD server. To run it on this Mac:
      brew install mpd
    Or connect to MPD on another machine from the setup assistant.
  EOS
end
