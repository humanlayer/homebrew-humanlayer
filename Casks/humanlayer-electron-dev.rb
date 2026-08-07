# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.1.2"
  sha256 "dab0b58996546026b921e083d8bc90a3f0584ef913d1f267d37fa265ca30a36a"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.1.2/HumanLayerElectronDev-0.1.2-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayerElectronDev"
  desc "Development Electron build of HumanLayer pointing at the dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide-electron-dev"
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "HumanLayerElectronDev.app"
  binary "#{appdir}/HumanLayerElectronDev.app/Contents/Resources/bin/riptided", target: "riptided-electron-dev"

  zap trash: [
    "~/.humanlayer/riptide/electron/dev",
    "~/.humanlayer/riptide/logs/electron-dev-*.log",
    "~/Library/Logs/com.humanlayer.electron.dev/",
    "~/Library/Preferences/com.humanlayer.electron.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.electron.dev.savedState",
  ]
end
