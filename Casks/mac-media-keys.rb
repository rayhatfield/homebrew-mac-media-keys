cask "mac-media-keys" do
  version "1.0.9"
  sha256 "1e195a8487904f4b7925eb4a8e35e3aa48b88994a1a9fc58d77999f79a81515b"

  url "https://github.com/rayhatfield/mac-media-keys/releases/download/v#{version}/MacMediaKeys-#{version}.zip"
  name "Mac Media Keys"
  desc "Forwards media keys to a chosen media app"
  homepage "https://github.com/rayhatfield/mac-media-keys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MacMediaKeys.app"

  zap trash: "~/Library/Preferences/com.mediakeys.forwarder.plist"
end
