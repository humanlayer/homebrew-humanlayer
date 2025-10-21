cask "codelayer" do
  version "0.13.0"
  sha256 "6c18a617da217552574a5638c2a97f8704f847f71077a48a38a61232eddd7911"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.13.0/CodeLayer-darwin-arm64.dmg"

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
