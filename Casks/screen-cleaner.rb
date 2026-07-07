cask "screen-cleaner" do
  version "1.0.1"
  sha256 "722ce62ca73dd1002c8916e4fc6967891ca5c62d64e1b4d3f9d5c16ee5789caa"

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
