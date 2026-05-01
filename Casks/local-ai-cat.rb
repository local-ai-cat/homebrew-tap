cask "local-ai-cat" do
  version "1.2.26"
  sha256 "ea843ab4e1b213f4d058e4864614d8e174886dead644deae2f7dd606f6fbeb46"

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
