# frozen_string_literal: true

cask "humanlayer-electron" do
  version "0.162.1"
  sha256 "a27df1ecefc47d36fdb7d24b757dbbbb62a66b9e4c62bfeb4a4f6e6af364d7a5"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-v0.162.1/HumanLayerElectron-0.162.1-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
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
