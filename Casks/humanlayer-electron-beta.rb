# frozen_string_literal: true

cask "humanlayer-electron-beta" do
  version "0.201.0"
  sha256 "6773896944381edaeb775716548bc871788802052657adfc36fd727419f3ebdc"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-beta-v0.201.0-20261102200956/HumanLayerElectronBeta-0.201.0-arm64.dmg"
  name "HumanLayerElectronBeta"
  desc "Beta Electron build of HumanLayer pointing at the beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
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
