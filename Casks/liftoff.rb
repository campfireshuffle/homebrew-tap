cask "liftoff" do
  version "0.1.2"
  sha256 "46f9d1b85def4249ab7a8c08ca23d88af62c557bdc9456877595d55c46c54e30"

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
