cask "local-ai-cat" do
  version "1.2.24"
  sha256 "13eeb51f1f0b9938b85a86da05a4dd1e07527c8f66dcd42d17a7282b707e9a90"

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
