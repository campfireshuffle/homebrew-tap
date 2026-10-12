cask "vinny" do
  version "0.2.5"
  sha256 "5bb7a340c9beef615816740a1cc6ab4b75e2ab0fa1acc36f9a2e5fc9cb04e2ce"

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
