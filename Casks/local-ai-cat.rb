cask "local-ai-cat" do
  version "1.2.41,155"
  sha256 "6eb161e5c9f39a4856c713e0cdd4f0f3059775e36a5956b389de2fdd51c7c0f1"

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
