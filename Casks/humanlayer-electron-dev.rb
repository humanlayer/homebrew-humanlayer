# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.178.36"
  sha256 "263b507e2fa457bffb007f43b1f9ee8c004a875706e3d5ff162731a0ca95254b"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.178.36-20260929223602/HumanLayerElectronDev-0.178.36-arm64.dmg"
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
