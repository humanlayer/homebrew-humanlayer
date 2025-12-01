cask "codelayer-pro" do
  version "0.18.1-pro"
  sha256 "0f57f514bcce9a34910ae79d8cdc6f30e370f0f2d758cf8a6e802f30f1434ba1"

  url "https://github.com/humanlayer/humanlayer/releases/download/pro-0.18.1-pro/CodeLayer-Pro-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Pro"
  desc "Pro edition of CodeLayer AI coding agent"
  homepage "https://humanlayer.dev/"

  app "CodeLayer-Pro.app"

  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/humanlayer", target: "humanlayer-pro"
  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/humanlayer", target: "codelayer-pro"
  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/hld", target: "hld-pro"
  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/cld", target: "cld-pro"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Pro",
    "~/Library/Preferences/dev.humanlayer.wui.pro.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.pro.savedState",
    "~/.humanlayer/codelayer-pro*.json",
    "~/.humanlayer/daemon-pro.db",
    "~/.humanlayer/daemon-pro.sock",
    "~/Library/Logs/dev.humanlayer.wui.pro/",
    "~/.humanlayer/logs/cld-pro-*.log",
  ]
end
