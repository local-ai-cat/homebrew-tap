cask "local-ai-cat" do
  version "1.3.4,175"
  sha256 "618da201a90c37d64fa6d859d7a8ab786a994ec82b015eabee7fbc3776942483"

  url "https://github.com/local-ai-cat/localaicat-site/releases/download/v#{version.before_comma}/LocalAIChatDirect-#{version.before_comma}.dmg"
  name "Local AI Cat"
  desc "Private, on-device AI chat and transcription. No cloud required."
  homepage "https://localaicat.com"

  livecheck do
    url "https://github.com/local-ai-cat/localaicat-site/releases/download/v#{version.before_comma}/LocalAIChatDirect-#{version.before_comma}.dmg"
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
