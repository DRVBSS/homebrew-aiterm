cask "ai-term" do
  version "0.10.1"
  sha256 "fa6d24c9710ef76a9df020ff90bd968c57a19a2b7fa9ce1c05c8989075a0a4d7"

  url "https://ai-term.com/AITerm-#{version}.dmg"
  name "AITerm"
  desc "Terminal with AI built into the command loop"
  homepage "https://ai-term.com/"

  livecheck do
    url "https://ai-term.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AITerm.app"

  zap trash: [
    "~/Library/Application Support/AITerm",
    "~/Library/Caches/com.vega.aiterm",
    "~/Library/HTTPStorages/com.vega.aiterm",
    "~/Library/Preferences/com.vega.aiterm.plist",
    "~/Library/Saved Application State/com.vega.aiterm.savedState",
  ]
end
