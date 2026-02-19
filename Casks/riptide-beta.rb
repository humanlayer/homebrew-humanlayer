cask "riptide-beta" do
  version "20260219025137-beta"
  sha256 "48a6b3e611540b40d46f042ae909294fd4717e342d4f7f0cd057a241b38b7bf3"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-20260219025137-beta/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Beta"
  desc "Beta build of Riptide pointing at beta environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Beta.app"

  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/Library/Application Support/Riptide-Beta",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.beta/"
  ]
end
