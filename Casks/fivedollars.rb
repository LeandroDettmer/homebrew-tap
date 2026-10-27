cask "fivedollars" do
  version "1.0.11"
  sha256 "5cef0dace1502b68f05bb904bac173887332ed6e5e7ee09391ed9cb7bbe67a77"

  url "https://github.com/LeandroDettmer/FiveDollars/releases/download/v#{version}/FiveDollars-macos.dmg"
  name "FiveDollars"
  desc "API client with collections, environments, runner and AI coding cockpit"
  homepage "https://github.com/LeandroDettmer/FiveDollars"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "FiveDollars.app"

  zap trash: [
    "~/Library/Application Support/com.fivedollars.app",
    "~/Library/Caches/com.fivedollars.app",
    "~/Library/Preferences/com.fivedollars.app.plist",
    "~/Library/Saved Application State/com.fivedollars.app.savedState",
    "~/Library/WebKit/com.fivedollars.app",
  ]
end
