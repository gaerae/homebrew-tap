cask "playpets" do
  version "1.7.2"
  sha256 "5cba99b7ec35cdb58737ea0a98bac585d612fd8d023be46ef7517be68df9c1b6"

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
