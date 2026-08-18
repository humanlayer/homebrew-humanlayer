# frozen_string_literal: true

cask "humanlayer-electron-beta" do
  version "0.161.0"
  sha256 "ac93eb10c1d5187e20261f87604be29f6f562221dc7f12a392885dd9d4244255"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-beta-v0.161.0-20260818142533/HumanLayerElectronBeta-0.161.0-arm64.dmg",
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
