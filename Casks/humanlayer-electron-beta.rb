# frozen_string_literal: true

cask "humanlayer-electron-beta" do
  version "0.165.0"
  sha256 "4e67caeb22d595240921b48910a352f7c5abe60c2b4c92834c0b3e898ed91746"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-beta-v0.165.0-20260827004209/HumanLayerElectronBeta-0.165.0-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
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
