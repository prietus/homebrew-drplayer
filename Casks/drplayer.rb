cask "drplayer" do
  version "1.11.0"
  sha256 "5199ced37bffca9bf8100eec7789e4be84376a088e3dba7396f4e0a90d0fec04"

  url "https://github.com/prietus/drplayer/releases/download/v#{version}/DrPlayer-#{version}.dmg"
  name "DrPlayer"
  desc "Audiophile music player for MPD"
  homepage "https://drplayer.priet.us"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "ffmpeg"
  depends_on macos: ">= :sonoma"

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
