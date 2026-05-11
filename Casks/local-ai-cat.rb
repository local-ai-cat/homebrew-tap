cask "local-ai-cat" do
  version "1.2.36,151"
  sha256 "967108e508047c5d5ef95f0a67081019e58db57e204562d1cb6fdd1bdefec59a"

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
