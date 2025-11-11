cask "codelayer" do
  version "0.16.2"
  sha256 "911dd50b34f75335abc558697e1fa508de78ab8cb40738fd3a06b9b394387df3"

  url "https://github.com/humanlayer/humanlayer/releases/download/v0.16.2/CodeLayer-darwin-arm64.dmg"

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
