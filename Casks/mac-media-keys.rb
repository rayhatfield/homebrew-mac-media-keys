cask "mac-media-keys" do
  version "1.1.0"
  sha256 "98f3eef1c211476d9d3036a86656f0d11434caf95e26a3e2f6c00f41ce9bdafb"

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
