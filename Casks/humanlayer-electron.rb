# frozen_string_literal: true

cask "humanlayer-electron" do
  version "0.202.0"
  sha256 "2fc7b5f4e412f142e7476bcc76d1f6d505c76e7640f672021c0f24ffef098e55"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-v0.202.0/HumanLayerElectron-0.202.0-arm64.dmg"
  name "HumanLayerElectron"
  desc "Electron edition of the HumanLayer AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "HumanLayerElectron.app"
  binary "#{appdir}/HumanLayerElectron.app/Contents/Resources/bin/riptided", target: "riptided-electron"

  zap trash: [
    "~/.humanlayer/electrondata/prod",
    "~/Library/Logs/com.humanlayer.electron/",
    "~/Library/Preferences/com.humanlayer.electron.plist",
    "~/Library/Saved Application State/com.humanlayer.electron.savedState",
  ]
end
