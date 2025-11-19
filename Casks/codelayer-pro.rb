cask "codelayer-pro" do
  version "0.0.5"
  sha256 "79395d12068d8ab992867b96157deb36b08551db20428b43613e1030da2f2f17"

  url "https://github.com/humanlayer/humanlayer/releases/download/pro-0.0.5/CodeLayer-Pro-darwin-arm64.dmg",
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
