cask "humanlayer" do
  version "0.163.0"
  sha256 "ae473e1e61eafb5fd618ec0a77da2162ceef7ef650b441518d58d88c05dfb323"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.163.0/Riptide-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayer"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide"
  depends_on :macos

  app "HumanLayer.app"
  binary "#{appdir}/HumanLayer.app/Contents/Resources/bin/riptided", target: "riptided"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-prod-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-prod-*.jsonl",
    "~/Library/Application Support/HumanLayer",
    "~/Library/Logs/com.humanlayer.riptide/",
    "~/Library/Preferences/com.humanlayer.riptide.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.savedState",
  ]
end
