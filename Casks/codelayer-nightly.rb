cask "codelayer-nightly" do
  version "0.1.0-20251107211245"
  sha256 "6a85040e91571c79a43c7619cb2381bc3c55e4ba961e64546fa4367ceb187ac8"

  url "https://github.com/humanlayer/humanlayer/releases/download/nightly-0.1.0-20251107211245/CodeLayer-Nightly-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Nightly"
  desc "Nightly build of CodeLayer with the latest features"
  homepage "https://humanlayer.dev/"

  app "CodeLayer-Nightly.app"

  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "humanlayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "codelayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/hld", target: "hld-nightly"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Nightly",
    "~/Library/Preferences/dev.humanlayer.wui.nightly.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.nightly.savedState",
    "~/.humanlayer/codelayer-nightly*.json",
    "~/.humanlayer/daemon-nightly.db",
    "~/.humanlayer/daemon-nightly.sock",
    "~/Library/Logs/dev.humanlayer.wui.nightly/",
  ]
end
