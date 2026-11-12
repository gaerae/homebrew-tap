cask "playpets" do
  version "1.6.1"
  sha256 "8704917899ef42a871015ba1d938de0513e787454fd09d4604d6f19425055ce1"

  url "https://github.com/gaerae/playpets/releases/download/v#{version}/PlayPets_#{version}_macos-universal.dmg"
  name "PlayPets"
  desc "Yard where your pets talk to each other"
  homepage "https://github.com/gaerae/playpets"

  # The app updates itself (Tauri updater); brew upgrade leaves it to that.
  auto_updates true
  depends_on :macos

  app "PlayPets.app"

  zap trash: [
    "~/Library/Application Support/app.playpets",
    "~/Library/Caches/app.playpets",
    "~/Library/Preferences/app.playpets.plist",
    "~/Library/WebKit/app.playpets",
  ]
end
