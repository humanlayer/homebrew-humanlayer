cask "riptide-experimental" do
  version "20260225182244-experimental"
  sha256 "17cd80224d0a2a5cdb8f7936ab2d2d673b3076f1b4a813ddde10b5d69cc79326"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-experimental-20260225182244-experimental/Riptide-Experimental-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Experimental"
  desc "Experimental build of Riptide - Bleeding edge features from main branch"
  homepage "https://humanlayer.dev/"

  app "Riptide-Experimental.app"

  binary "#{appdir}/Riptide-Experimental.app/Contents/Resources/bin/riptided", target: "riptided-experimental"

  zap trash: [
    "~/Library/Application Support/Riptide-Experimental",
    "~/Library/Preferences/com.codelayer.riptide.experimental.plist",
    "~/Library/Saved Application State/com.codelayer.riptide.experimental.savedState",
    "~/.humanlayer/riptide/logs/riptide-experimental-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-experimental-*.jsonl",
    "~/Library/Logs/com.codelayer.riptide.experimental/"
  ]
end
