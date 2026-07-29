cask "mac-media-keys" do
  version "1.1.3"
  sha256 "824175b51bfbb9a36f4c7b5401874d88e82ed1dca2e6c616380ab5c244aff4c1"

  url "https://github.com/rayhatfield/mac-media-keys/releases/download/v#{version}/MacMediaKeys-#{version}.zip"
  name "Mac Media Keys"
  desc "Forwards media keys to a chosen media app"
  homepage "https://github.com/rayhatfield/mac-media-keys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MacMediaKeys.app"

  zap trash: "~/Library/Preferences/com.mediakeys.forwarder.plist"
end
