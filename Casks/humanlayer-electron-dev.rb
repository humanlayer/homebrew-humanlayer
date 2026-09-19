# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.176.2"
  sha256 "507ceffe1430578f80af753a30e64197abcd535a7ea258e639c3efe74ecd2bf0"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.176.2-20260919194128/HumanLayerElectronDev-0.176.2-arm64.dmg"
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
