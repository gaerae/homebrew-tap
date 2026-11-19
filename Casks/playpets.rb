cask "playpets" do
  version "1.8.7"
  sha256 "7d93a9e74b37d2d03c08b54ff0b75795426183ef2833df05f9a600bf800f8cbd"

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
