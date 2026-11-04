cask "playpets" do
  version "1.5.0"
  sha256 "2734a096ce5a0288e35030ae6af2a445c1617db531f10af982a6b1f6d043de05"

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
