cask "claudius" do
  version "0.5.0"
  sha256 "a877d1d87a67bec5cd75783479aecfaa4a94b0347a80a37f9682c570fba7ed4b"

  url "https://github.com/chrisvanbuskirk/claudius/releases/download/v#{version}/Claudius_#{version}_aarch64.dmg"
  name "Claudius"
  desc "Local AI research briefing agent powered by Claude"
  homepage "https://github.com/chrisvanbuskirk/claudius"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Claudius.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claudius.app"],
                   sudo: false
  end

  zap trash: [
    "~/.claudius",
    "~/Library/Preferences/com.claudius.app.plist",
    "~/Library/Caches/com.claudius.app",
    "~/Library/Application Support/com.claudius.app",
  ]
end
