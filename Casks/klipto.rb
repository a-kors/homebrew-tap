cask "klipto" do
  version "1.4.0"
  sha256 "57728f517981376b0b940cca62bffd21d82b9734b5e06554bae1ea8cbee9369f"

  url "https://klipto.me/releases/Klipto-#{version}.dmg"
  name "Klipto"
  desc "Clipboard manager with hold-to-paste, a stack and text transforms"
  homepage "https://klipto.me/"

  livecheck do
    url "https://klipto.me/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Klipto.app"

  zap trash: [
    "~/Library/Application Scripts/app.klipto",
    "~/Library/Application Support/Klipto",
    "~/Library/Caches/app.klipto",
    "~/Library/Containers/app.klipto",
    "~/Library/HTTPStorages/app.klipto",
    "~/Library/Preferences/app.klipto.plist",
    "~/Library/Saved Application State/app.klipto.savedState",
  ]
end
