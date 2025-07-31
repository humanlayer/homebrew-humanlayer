cask "codelayer" do
  version "0.1.0"
  sha256 "50d7264ed2a3bd0ff73ded0204172d942f85cf101316c57756901a6bea0eb7ee"

  url "https://github.com/humanlayer/humanlayer/releases/download/20250731/CodeLayer_#{version}_aarch64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer"
  desc "Desktop application for managing AI agent approvals and sessions"
  homepage "https://humanlayer.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CodeLayer.app"

  # Create symlinks for bundled binaries in PATH
  # These binaries are located in the app bundle at Contents/Resources/bin/
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/humanlayer"
  binary "#{appdir}/CodeLayer.app/Contents/Resources/bin/hld", target: "hld"

  zap trash: [
    "~/Library/Application Support/CodeLayer",
    "~/Library/Preferences/dev.humanlayer.wui.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.savedState",
    "~/.humanlayer/codelayer*.json",
    "~/.humanlayer/daemon*.db",
    "~/.humanlayer/daemon*.sock",
  ]
end
