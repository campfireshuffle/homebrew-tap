cask "liftoff" do
  version "0.1.1"
  sha256 "fd8fc87754dfaf68369ca9bdda6a240feb2a1bae83c3e7b591be837cf483fdf9"

  url "https://github.com/campfireshuffle/liftoff/releases/download/v#{version}/liftoff-#{version}-macos-arm64.zip"
  name "Liftoff"
  desc "Throw windows and watch them land on gas thrusters"
  homepage "https://github.com/campfireshuffle/liftoff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Liftoff.app"

  zap trash: "~/Library/Preferences/run.lil.liftoff.plist"
end
