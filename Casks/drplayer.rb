cask "drplayer" do
  version "1.11.1"
  sha256 "d260b90b3d23e0dabb2bdf1d36c140efc4847db77e8e048077e3b6b7e00a047e"

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
