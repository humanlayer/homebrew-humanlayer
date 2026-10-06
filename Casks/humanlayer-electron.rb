# frozen_string_literal: true

cask "humanlayer-electron" do
  version "0.181.1"
  sha256 "375a355dfe5e1d7225bfaac5eeb4837fe24984d40b27eb9365dfb04b761463d7"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-v0.181.1/HumanLayerElectron-0.181.1-arm64.dmg"
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
