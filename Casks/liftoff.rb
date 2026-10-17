cask "liftoff" do
  version "0.1.0"
  sha256 "6a7f519f186f5794058020198cd457abd4fbccd42344b44c5dbe0f06ffdd9e2b"

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
