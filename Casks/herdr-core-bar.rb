cask "herdr-core-bar" do
  version "0.1.1"
  sha256 "2a49a0c10a658b0ff1b9b795bfaa2febc72917621566917bff54494980c07090"

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
