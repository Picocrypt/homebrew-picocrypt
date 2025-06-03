cask "picocrypt" do
  arch arm: "arm64"

  version "1.48"
  sha256 arm: "f70fbc98f62f488c93ce6b68a70dc95b41d1e05be92f29822af335fa019fe71d"

  url "https://github.com/Picocrypt/Picocrypt/releases/download/#{version}/Picocrypt.dmg"
  name "Picocrypt"
  desc "Very small, very simple, yet very secure encryption tool"
  homepage "https://github.com/Picocrypt/Picocrypt"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Picocrypt.app"

  zap trash: [
    "~/Library/Preferences/com.evansu.picocrypt.plist",
    "~/Library/Saved Application State/com.evansu.picocrypt.savedState",
  ]
end
