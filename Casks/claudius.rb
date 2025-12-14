cask "claudius" do
  version "0.3.2"
  sha256 "278d85c7d715ea2cb2511d945dd7ee242d0072867b05ead984108e0b4eca0efa"

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
