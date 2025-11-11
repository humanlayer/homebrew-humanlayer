cask "codelayer-pro" do
  version "v0.0.3"
  sha256 "cbda670dd17d0051d079c4361aa23cab47e9d782965367de11ff8067c54752a0"

  url "https://github.com/humanlayer/humanlayer/releases/download/pro-v0.0.3/CodeLayer-Pro-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Pro"
  desc "Pro edition of CodeLayer AI coding agent"
  homepage "https://humanlayer.dev/"

  app "CodeLayer-Pro.app"

  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/humanlayer", target: "humanlayer-pro"
  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/humanlayer", target: "codelayer-pro"
  binary "#{appdir}/CodeLayer-Pro.app/Contents/Resources/bin/hld", target: "hld-pro"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Pro",
    "~/Library/Preferences/dev.humanlayer.wui.pro.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.pro.savedState",
    "~/.humanlayer/codelayer-pro*.json",
    "~/.humanlayer/daemon-pro.db",
    "~/.humanlayer/daemon-pro.sock",
    "~/Library/Logs/dev.humanlayer.wui.pro/",
  ]
end
