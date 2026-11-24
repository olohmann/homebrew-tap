cask "herdr-core-bar" do
  version "0.1.0"
  sha256 "089899e0a5513ab160a67087f939df0bcddf7b7991b8d7758270ed60e928eae1"

  url "https://github.com/olohmann/herdr-core-bar/releases/download/v#{version}/HerdrCoreBar-#{version}.dmg"
  name "Herdr Core Bar"
  desc "Menu bar status for herdr-core agent terminals"
  homepage "https://github.com/olohmann/herdr-core-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Herdr Core Bar.app"

  zap trash: [
    "~/Library/Application Support/com.olohmann.herdr-core-bar",
    "~/Library/Caches/com.olohmann.herdr-core-bar",
    "~/Library/HTTPStorages/com.olohmann.herdr-core-bar",
    "~/Library/HTTPStorages/com.olohmann.herdr-core-bar.binarycookies",
    "~/Library/Preferences/com.olohmann.herdr-core-bar.plist",
    "~/Library/Saved Application State/com.olohmann.herdr-core-bar.savedState",
  ]
end
