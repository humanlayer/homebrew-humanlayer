cask "codelayer" do
  version "0.17.0"
  sha256 "310b5afd12241c83c30d4cd5c9b54f6681e28a1f5d35ae5fac2f11f2bcd928cf"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.17.0/CodeLayer-darwin-arm64.dmg"

  name "CodeLayer"
  desc "Desktop application for HumanLayer AI approvals"
  homepage "https://github.com/humanlayer/humanlayer"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "CodeLayer.app"

  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer", target: "codelayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/hld"

  zap trash: [
    "~/.config/humanlayer/",
    "~/.humanlayer/daemon*.db",
    "~/.humanlayer/daemon*.sock",
    "~/.humanlayer/logs/",
    "~/Library/Application Support/CodeLayer/",
    "~/Library/Logs/dev.humanlayer.wui/",
    "~/Library/Preferences/dev.humanlayer.wui.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.savedState",
  ]
end
