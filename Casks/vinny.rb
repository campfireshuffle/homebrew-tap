cask "vinny" do
  version "0.2.6"
  sha256 "0ee34cf0299dbd2dd3d7879588f6bee857270a97c0b666bb532519b12c52b62c"

  url "https://github.com/campfireshuffle/vinny/releases/download/v#{version}/vinny-#{version}-macos-arm64.zip"
  name "Vinny"
  desc "Native VNC server"
  homepage "https://github.com/campfireshuffle/vinny"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Vinny.app"

  zap trash: "~/Library/Preferences/run.lil.vinny.plist"
end
