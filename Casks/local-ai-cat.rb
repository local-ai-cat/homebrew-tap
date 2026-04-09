cask "local-ai-cat" do
  version "1.2.19"
  sha256 "4830f40c7061206c4345632938f476ed230f1a29accf1329e1e9f520c32e96bb"

  url "https://github.com/local-ai-cat/localaicat-site/releases/download/v#{version}/LocalAIChatDirect-#{version}.dmg"
  name "Local AI Cat"
  desc "Private, on-device AI chat and transcription. No cloud required."
  homepage "https://localaicat.com"

  livecheck do
    url "https://github.com/local-ai-cat/localaicat-site/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Local AI Chat.app"

  zap trash: [
    "~/Library/Application Support/Local AI Chat",
    "~/Library/Preferences/pldev.Seek-Deep-Local-AI.plist",
    "~/Library/Caches/pldev.Seek-Deep-Local-AI",
  ]
end
