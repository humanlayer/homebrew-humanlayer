cask "codelayer-nightly" do
  version "0.1.0-nightly-20260106141310"
  sha256 "4c4652c72ca767086146cfd3d0c1529a245866128bfc019a433693dee8ae1223"

  url "https://github.com/humanlayer/humanlayer/releases/download/nightly-0.1.0-nightly-20260106141310/CodeLayer-Nightly-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Nightly"
  desc "Nightly build of CodeLayer with the latest features"
  homepage "https://humanlayer.dev/"

  app "CodeLayer-Nightly.app"

  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "humanlayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "codelayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/hld", target: "hld-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/cld", target: "cld-nightly"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Nightly",
    "~/Library/Preferences/dev.humanlayer.wui.nightly.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.nightly.savedState",
    "~/.humanlayer/codelayer-nightly*.json",
    "~/.humanlayer/daemon-nightly.db",
    "~/.humanlayer/daemon-nightly.sock",
    "~/Library/Logs/dev.humanlayer.wui.nightly/",
    "~/.humanlayer/logs/cld-nightly-*.log",
  ]
end
