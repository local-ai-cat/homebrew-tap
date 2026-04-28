cask "local-ai-cat" do
  version "1.2.25"
  sha256 "81b0f488f062d6f59b647f79d33bc7904829bc40df307e59b278834b8cc02b06"

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
