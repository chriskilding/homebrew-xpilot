cask "xpilot" do

  version "2.0.0-beta.42"
  sha256 "5380a6c3589a1e00f8a42c97cf7cbd6db389d2a337edc0cbbd3a700e9347e483"

  url "https://github.com/xpilot-project/xpilot/releases/download/v#{version}/xPilot-#{version}-MacOS.dmg"
  
  name "xPilot"
  desc "Open-source, cross-platform X-Plane pilot client for VATSIM."
  homepage "https://beta.xpilot-project.org/#/"
  license "GPL-3.0-only"

  # xPilot can check for updates and download the latest DMG,
  # but the user must do the final step and run the installer,
  # so this is not really auto-updating
  auto_updates false
  
  depends_on macos: ">= :mojave"

  installer manual: "xPilot.app"

  app "xPilot.app"

  zap trash: [
    "~/Library/Application Support/org.vatsim.xpilot"
  ]
end