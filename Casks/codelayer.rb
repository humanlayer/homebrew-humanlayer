cask "codelayer" do
  version "0.19.0"
  sha256 "7413627335d27d22c7a4ae47917d256a623b81126840c987c8efb0d6e4c6692c"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.19.0/CodeLayer-Stable-darwin-arm64.dmg",
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
