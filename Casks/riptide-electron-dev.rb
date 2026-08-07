# frozen_string_literal: true

cask "riptide-electron-dev" do
  version "0.1.0"
  sha256 "2664b1cc4d09907a8e2893e40c99b74e381af5ed9a606043b11ef1f28b771dea"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.1.0/HumanLayer-Dev.Electron-0.1.0-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayer-Dev Electron"
  desc "Development Electron build of HumanLayer pointing at the dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-electron-dev"
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "HumanLayer-Dev Electron.app"
  binary "#{appdir}/HumanLayer-Dev Electron.app/Contents/Resources/bin/riptided", target: "riptided-electron-dev"

  zap trash: [
    "~/.humanlayer/riptide/electron/dev",
    "~/.humanlayer/riptide/logs/electron-dev-*.log",
    "~/Library/Logs/com.humanlayer.electron.dev/",
    "~/Library/Preferences/com.humanlayer.electron.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.electron.dev.savedState",
  ]
end
