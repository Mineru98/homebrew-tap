cask "screen-cleaner" do
  version "1.1.0"
  sha256 "ad05e1d3302b15a63ab7cf944261c90c0cde410dbc7227c24f75c108c75d1518"

  url "https://github.com/Mineru98/screen-cleaner-releases/releases/download/v#{version}/ScreenCleaner.dmg"
  name "Screen Cleaner"
  desc "Block keyboard input and dim screen for safe MacBook cleaning"
  homepage "https://github.com/Mineru98/screen-cleaner-releases"

  depends_on macos: :sonoma

  app "ScreenCleaner.app"

  zap trash: [
    "~/Library/Preferences/com.screencleaner.ScreenCleaner.plist",
    "~/Library/Application Support/ScreenCleaner",
  ]
end
