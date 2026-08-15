# frozen_string_literal: true

cask "humanlayer-electron-dev" do
  version "0.158.6"
  sha256 "ba9383f7722d9eeeb6c7625ff17cc4f58e47a49993fb0539a23029b717a4d018"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/humanlayer-electron-dev-v0.158.6-20260815015838/HumanLayerElectronDev-0.158.6-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
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
