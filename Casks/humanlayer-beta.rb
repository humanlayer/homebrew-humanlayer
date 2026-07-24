cask "humanlayer-beta" do
  version "0.148.0"
  sha256 "9e398b9e7251baf0425bb33e17f835d3d4d92694ffd1f8e3f4b0f83a4aa885ca"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.148.0-20260724235451/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayer-Beta"
  desc "Beta build of HumanLayer pointing at beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide-beta"
  depends_on :macos

  app "HumanLayer-Beta.app"
  binary "#{appdir}/HumanLayer-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/Library/Application Support/HumanLayer-Beta",
    "~/Library/Logs/com.humanlayer.riptide.beta/",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
  ]
end
