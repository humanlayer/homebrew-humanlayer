cask "codelayer" do
  version "0.11.1"
  sha256 "5616dd0fcef2a2f51a25859fdd4f02eb8359e86487b1fd3b908d9352de4d3c47"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.11.1/CodeLayer-darwin-arm64.dmg"

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
