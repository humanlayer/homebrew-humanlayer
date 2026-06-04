cask "riptide-beta" do
  version "0.101.3"
  sha256 "1aeced33aae0484448666625054758fdcc2f5423b640b3ad36ce42b4da94d92b"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.101.3-20260604144225/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "Riptide-Beta"
  desc "Beta build of HumanLayer pointing at beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-beta"
  depends_on :macos

  app "HumanLayer-Beta.app", target: "Riptide-Beta.app"
  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/Library/Application Support/HumanLayer-Beta",
    "~/Library/Logs/com.humanlayer.riptide.beta/",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
  ]
end
