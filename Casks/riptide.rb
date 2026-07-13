cask "riptide" do
  version "0.139.0"
  sha256 "c4e2ca95f50d3cefdde516ad2571dae980652bfee2c63231b7ccb469c121379f"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.139.0/Riptide-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "Riptide"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer"
  depends_on :macos

  app "HumanLayer.app", target: "Riptide.app"
  binary "#{appdir}/Riptide.app/Contents/Resources/bin/riptided", target: "riptided"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-prod-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-prod-*.jsonl",
    "~/Library/Application Support/HumanLayer",
    "~/Library/Logs/com.humanlayer.riptide/",
    "~/Library/Preferences/com.humanlayer.riptide.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.savedState",
  ]
end
