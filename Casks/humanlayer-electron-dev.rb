# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.178.23"
  sha256 "e100b4b88bf2fdfd7b8980e1d81efce95dd2f3313554593f47dd21231faaa2af"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.178.23-20260927014018/HumanLayerElectronDev-0.178.23-arm64.dmg"
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
