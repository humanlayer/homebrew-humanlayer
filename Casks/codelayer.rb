cask "codelayer" do
  version "v0.19.0"
  sha256 "0e3d93ac8219afa7fb4860894e7b5c46733d9c34c51fc9e598a901b52b2be9a6"

  url "https://github.com/humanlayer/humanlayer/releases/download/vv0.19.0/CodeLayer-Stable-darwin-arm64.dmg",
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
