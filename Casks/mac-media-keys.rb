cask "mac-media-keys" do
  version "1.1.1"
  sha256 "932b5eb69c8e4e5d176ccc8988cc0046cfadf18fc07640e159d3a8afc0384ee6"

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
