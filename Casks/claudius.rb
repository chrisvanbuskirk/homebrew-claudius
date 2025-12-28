cask "claudius" do
  version "0.5.2"
  sha256 "1cc2c5ecd23317cde2eaa802ce23a4fe6fcb8044cbeb94eff53691ede8d68f83"

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
