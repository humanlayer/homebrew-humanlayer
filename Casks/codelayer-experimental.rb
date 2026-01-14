cask "codelayer-experimental" do
  version "0.1.0-experimental-21011628669"
  sha256 "f3d0cccda873c4192030119a75b0d60c57688bfe6c00efc91cf9874c7e8449cc"

  url "https://github.com/humanlayer/humanlayer/releases/download/experimental-0.1.0-experimental-21011628669/CodeLayer-Experimental-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Experimental"
  desc "Experimental build of CodeLayer - Bleeding edge features from main branch"
  homepage "https://humanlayer.dev/"

  # No conflicts - can install alongside stable and nightly

  app "CodeLayer-Experimental.app"

  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/humanlayer", target: "humanlayer-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/humanlayer", target: "codelayer-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/hld", target: "hld-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/cld", target: "cld-experimental"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Experimental",
    "~/Library/Preferences/dev.humanlayer.wui.experimental.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.experimental.savedState",
    "~/.humanlayer/codelayer-experimental*.json",
    "~/.humanlayer/daemon-experimental*.db",
    "~/.humanlayer/daemon-experimental*.sock",
    "~/Library/Logs/dev.humanlayer.wui.experimental/",
    "~/.humanlayer/logs/cld-experimental-*.log",
  ]
end
