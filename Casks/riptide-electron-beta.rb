# frozen_string_literal: true

cask "riptide-electron-beta" do
  version "0.156.0"
  sha256 "7785ea2f5df70f272ea9f8144c5f0cafd40e8212253e7db5bc298e542743527f"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-beta-v0.156.0-20260813032955/HumanLayerElectronBeta-0.156.0-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayerElectronBeta"
  desc "Beta Electron build of HumanLayer pointing at the beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-electron-beta"
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "HumanLayerElectronBeta.app"
  binary "#{appdir}/HumanLayerElectronBeta.app/Contents/Resources/bin/riptided", target: "riptided-electron-beta"

  zap trash: [
    "~/.humanlayer/electrondata/beta",
    "~/Library/Logs/com.humanlayer.electron.beta/",
    "~/Library/Preferences/com.humanlayer.electron.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.electron.beta.savedState",
  ]
end
