cask "codelayer-nightly" do
  version "0.1.0-202510261405-nightly"
  sha256 "9155b2be2398be12483c613c25ab238c9d2e4687faeb4aad7f2551afc1041759"

  url "https://github.com/humanlayer/humanlayer/releases/download/0.1.0-202510261405-nightly/CodeLayer-Nightly_0.1.0_aarch64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Nightly"
  desc "Nightly build of CodeLayer - Desktop application for managing AI agent approvals"
  homepage "https://humanlayer.dev/"

  # No conflicts - can install alongside stable

  app "CodeLayer-Nightly.app"

  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "humanlayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "codelayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/hld", target: "hld-nightly"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Nightly",
    "~/Library/Preferences/dev.humanlayer.wui.nightly.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.nightly.savedState",
    "~/.humanlayer/codelayer-nightly*.json",
    "~/.humanlayer/daemon-nightly*.db",
    "~/.humanlayer/daemon-nightly*.sock",
    "~/Library/Logs/dev.humanlayer.wui.nightly/",
  ]
end
