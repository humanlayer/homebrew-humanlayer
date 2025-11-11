cask "codelayer" do
  version "0.16.4"
  sha256 "f2e514a033530aa798138c6eeb318c1c9002fd1d8a76e7bd102fdd1147f48500"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.16.4/CodeLayer-Stable-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  app "CodeLayer.app"

  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer", target: "codelayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/hld"

  zap trash: [
    "~/Library/Application Support/CodeLayer",
    "~/Library/Preferences/dev.humanlayer.wui.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.savedState",
    "~/.humanlayer/codelayer*.json",
    "~/.humanlayer/daemon.db",
    "~/.humanlayer/daemon.sock",
    "~/Library/Logs/dev.humanlayer.wui/",
  ]
end
