cask "nocfree-rmk-companion" do
  version "1.1.0"
  sha256 "7347d7b493a552cea73c018c33d2f696b18e1f472e7d632b1c66ec80c6566f7d"

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
