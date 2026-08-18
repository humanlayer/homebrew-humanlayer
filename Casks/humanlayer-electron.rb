# frozen_string_literal: true

cask "humanlayer-electron" do
  version "0.161.0"
  sha256 "c3d1113d6c19408c38156f0410b32e137369605d523ca951a17fff9f685903e6"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-v0.161.0/HumanLayerElectron-0.161.0-arm64.dmg",
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
