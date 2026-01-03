cask "codelayer-experimental" do
  version "0.1.0-experimental-20683482378"
  sha256 "4d2d3394b1b863700fd64a747c1188b2b3eba80782cdfe3e346f165441bd10e1"

  url "https://github.com/humanlayer/humanlayer/releases/download/experimental-0.1.0-experimental-20683482378/CodeLayer-Experimental-darwin-arm64.dmg",
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
