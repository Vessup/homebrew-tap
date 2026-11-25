cask "cab" do
  # The release workflow in Vessup/cab rewrites these two lines; keep each on
  # one line in this form.
  version "1.3.0"
  sha256 "123cd003bb2446cb6be9ecde0a9b9c714f919ec7b51e9a11e72d7f0bf788be0e"

  url "https://github.com/Vessup/homebrew-tap/releases/download/cab-v#{version}/Cab.dmg"
  name "Cab"
  desc "Command-Tab switcher, launcher and window manager"
  homepage "https://cablauncher.com/"

  livecheck do
    url :url
    regex(/^cab-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cab.app"

  uninstall quit: "com.cablauncher.cab"

  zap trash: [
    "~/Library/Application Support/Cab",
    "~/Library/Application Support/com.cablauncher.cab",
    "~/Library/Application Support/com.vessupventures.cab",
    "~/Library/Caches/Cab",
    "~/Library/Caches/com.cablauncher.cab",
    "~/Library/Caches/com.vessupventures.cab",
    "~/Library/HTTPStorages/com.cablauncher.cab",
    "~/Library/HTTPStorages/com.vessupventures.cab",
    "~/Library/Preferences/com.cablauncher.cab.plist",
    "~/Library/Preferences/com.vessupventures.cab.plist",
    "~/Library/Saved Application State/com.cablauncher.cab.savedState",
    "~/Library/Saved Application State/com.vessupventures.cab.savedState",
  ]
end
