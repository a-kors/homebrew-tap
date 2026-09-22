cask "klipto" do
  version "1.4.1"
  sha256 "ed7578c814c37fd7a6652dd050bea80c8d180c7167bb12ff3d94b69185234216"

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
