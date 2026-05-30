cask "local-ai-cat" do
  version "1.3.3,171"
  sha256 "0a3bffd6effe57b83c276768a71d260b4a08dca8ffdc93ee8c6a7ca796c7ea78"

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
