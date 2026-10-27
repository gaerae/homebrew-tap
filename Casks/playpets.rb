cask "playpets" do
  version "1.3.0"
  sha256 "a6e2e3fd4d236e8a808fee0e14433dc54cdbedc0f5a6192a678d18c89787ffda"

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
