# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.160.11"
  sha256 "cd8ccc015033b4a93efee5ae3f1a3b143d373f15330f39d4a38f4119c2c71587"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.160.11-20260818033244/HumanLayerElectronDev-0.160.11-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayerElectronDev"
  desc "Development Electron build of HumanLayer pointing at the dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "HumanLayerElectronDev.app"
  binary "#{appdir}/HumanLayerElectronDev.app/Contents/Resources/bin/riptided", target: "riptided-electron-dev"

  zap trash: [
    "~/.humanlayer/electrondata/dev",
    "~/Library/Logs/com.humanlayer.electron.dev/",
    "~/Library/Preferences/com.humanlayer.electron.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.electron.dev.savedState",
  ]
end
