cask "cab" do
  # The release workflow in Vessup/cab rewrites these two lines; keep each on
  # one line in this form.
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/Vessup/homebrew-tap/releases/download/cab-v#{version}/Cab.dmg"
  name "Cab"
  desc "Command-Tab switcher, launcher and window manager"
  homepage "https://cablauncher.com/"

  livecheck do
    url :url
    regex(/^cab-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Cab.app"

  uninstall quit: "com.vessupventures.cab"

  zap trash: [
    "~/Library/Application Support/Cab",
    "~/Library/Application Support/com.vessupventures.cab",
    "~/Library/Caches/Cab",
    "~/Library/Caches/com.vessupventures.cab",
    "~/Library/HTTPStorages/com.vessupventures.cab",
    "~/Library/Preferences/com.vessupventures.cab.plist",
    "~/Library/Saved Application State/com.vessupventures.cab.savedState",
  ]
end
