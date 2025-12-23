cask "codelayer" do
  version "0.20.0"
  sha256 "4e0bddd653861e2ca60d67464956d5d305a170f4f15459a64c6f9722a1f376e3"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.20.0/CodeLayer-Stable-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  app "CodeLayer.app"

  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer", target: "codelayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/hld"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/cld"

  zap trash: [
    "~/Library/Application Support/CodeLayer",
    "~/Library/Preferences/dev.humanlayer.wui.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.savedState",
    "~/.humanlayer/codelayer*.json",
    "~/.humanlayer/daemon.db",
    "~/.humanlayer/daemon.sock",
    "~/Library/Logs/dev.humanlayer.wui/",
    "~/.humanlayer/logs/cld-stable-*.log",
  ]
end
