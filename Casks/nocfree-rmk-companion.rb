cask "nocfree-rmk-companion" do
  version "1.1.1"
  sha256 "57c2ca4e2e8f2073e789147137bcbc2b94bbcd86664079d33f3d3c7bc527099a"

  url "https://github.com/campfireshuffle/nocfree-and-rmk/releases/download/v#{version}/nocfree-rmk-companion-#{version}-macos-arm64.zip"
  name "NocFree RMK Companion"
  desc "Set up and restore NocFree keyboards"
  homepage "https://github.com/campfireshuffle/nocfree-and-rmk"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "NocFree RMK Companion.app"

  # Keep factory backups when the app is removed.
  zap trash: "~/Library/Logs/NocFree RMK Companion"
end
