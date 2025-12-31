cask "claudius" do
  version "0.5.3"
  sha256 "73d6482bd0841c44430bd14f269f1a100648a8536f0cc24ac5ea05b79802f3a3"

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
