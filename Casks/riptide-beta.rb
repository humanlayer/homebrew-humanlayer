cask "riptide-beta" do
  version "0.63.2"
  sha256 "f2be3728628926c849c38de960869b96e933002b3e0b46e8dc2dab4a84fba519"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.63.2-20260507202256/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Beta"
  desc "Beta build of Riptide pointing at beta environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Beta.app"

  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide-Beta",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.beta/"
  ]
end
