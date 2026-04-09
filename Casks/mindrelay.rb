cask "mindrelay" do
  version "0.2.0"
  sha256 "e6655f9fa7956611e329384bab427880c90b8deef7488d07a51bbb2ba8e339cb"

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
  binary "#{appdir}/MindRelay.app/Contents/Resources/mindrelay"

  zap trash: [
    "~/Library/Logs/com.pruizlezcano.MindRelay",
    "~/Library/Preferences/com.pruizlezcano.MindRelay.plist",
  ]
end
