cask "mindrelay" do
  version "0.1.0"
  sha256 "56d6115a3aca0da2c001a32ebd2e993e8edf427e661dca37bb339e74de84819b"

  url "https://github.com/pruizlezcano/MindRelay/releases/download/v#{version}/MindRelay-#{version}.dmg"
  name "MindRelay"
  desc "OpenAI-compatible API for Apple Foundation Models"
  homepage "https://github.com/pruizlezcano/MindRelay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "MindRelay.app"

  zap trash: [
    "~/Library/Logs/com.pruizlezcano.MindRelay",
    "~/Library/Preferences/com.pruizlezcano.MindRelay.plist",
  ]
end
