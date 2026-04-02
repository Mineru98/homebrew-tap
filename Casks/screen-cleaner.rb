cask "screen-cleaner" do
  version "1.0.0"
  sha256 "3c83d26c11de2842f84230501b14322f3d63348d1ec162d990321aba800acbdb"

  url "https://github.com/Mineru98/screen-cleaner/releases/download/v#{version}/ScreenCleaner.dmg"
  name "Screen Cleaner"
  desc "Blocks keyboard input and dims screen while cleaning your MacBook"
  homepage "https://github.com/Mineru98/screen-cleaner"

  depends_on macos: ">= :sonoma"

  app "ScreenCleaner.app"

  zap trash: [
    "~/Library/Preferences/com.mineru98.ScreenCleaner.plist",
    "~/Library/Application Support/ScreenCleaner",
  ]
end
