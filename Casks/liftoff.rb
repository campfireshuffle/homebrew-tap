cask "liftoff" do
  version "0.1.3"
  sha256 "b54c18bb6f2054958ce605c752f7d3650c5e5f87bdeab2150ce3781b982a608e"

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
