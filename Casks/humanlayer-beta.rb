cask "humanlayer-beta" do
  version "0.120.7"
  sha256 "a51492f00f7c40731c6121965a55cbde8e56b8747273cd3cf6d6bff692c02287"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.120.7-20260623032321/Riptide-Beta-darwin-arm64.dmg",
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
