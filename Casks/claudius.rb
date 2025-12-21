cask "claudius" do
  version "0.4.1"
  sha256 "65b00e08094548f63efc96c86a2d145e8614ee904c06aba7409bde84518bed12"

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
