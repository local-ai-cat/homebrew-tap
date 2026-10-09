cask "local-ai-cat" do
  version "1.4.0,477"
  sha256 "cdddd7003acc6e36315892304c9428f8701be10e7adb21b763d396bd9ac499fc"

  url "https://github.com/local-ai-cat/localaicat-site/releases/download/v#{version.before_comma}-#{version.after_comma}/LocalAIChatDirect-#{version.before_comma}.dmg"
  name "Local AI Cat"
  desc "Private, on-device AI chat and transcription. No cloud required."
  homepage "https://localaicat.com"

  livecheck do
    url "https://github.com/local-ai-cat/localaicat-site/releases/download/v#{version.before_comma}-#{version.after_comma}/LocalAIChatDirect-#{version.before_comma}.dmg"
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
