cask "mac-media-keys" do
  version "1.1.2"
  sha256 "2ebd49ec3cd4e60cbb4cb0a2315f978a2f12833780d903a79d2bf7671f29863c"

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
