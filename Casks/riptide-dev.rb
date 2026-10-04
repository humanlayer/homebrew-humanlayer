cask "riptide-dev" do
  version "0.180.12"
  sha256 "87381a6c2c21c95860cba72c43bc821d9a730b102686a4f04eee75ca74d2ce72"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.180.12-20261004201540/Riptide-Dev-darwin-arm64.dmg"
  name "Riptide-Dev"
  desc "Development build of HumanLayer pointing at dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-dev"
  depends_on :macos

  app "HumanLayer-Dev.app", target: "Riptide-Dev.app"
  binary "#{appdir}/Riptide-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/Library/Application Support/HumanLayer-Dev",
    "~/Library/Logs/com.humanlayer.riptide.dev/",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
  ]
end
