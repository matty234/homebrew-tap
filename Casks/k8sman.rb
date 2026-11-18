cask "k8sman" do
  version "0.2.23"
  sha256 "438293549de1cfb5fb54776a4918c1b560f44e2594fb413982033c9b6a6ba145"

  url "https://github.com/matty234/k8sman/releases/download/v#{version}/k8sman-#{version}-macos.zip"
  name "k8sman"
  desc "Native Kubernetes IDE"
  homepage "https://github.com/matty234/k8sman"

  # The appcast the app itself uses; `brew livecheck` reads it.
  livecheck do
    url "https://github.com/matty234/k8sman/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # The app updates itself with Sparkle, so `brew upgrade` leaves it alone
  # unless run with --greedy.
  auto_updates true
  depends_on macos: :monterey

  app "k8sman.app"

  zap trash: [
    "~/.cache/k8sman",
    "~/.config/k8sman",
    "~/Library/Caches/dev.k8sman.app",
    "~/Library/HTTPStorages/dev.k8sman.app",
    "~/Library/Preferences/dev.k8sman.app.plist",
    "~/Library/Saved Application State/dev.k8sman.app.savedState",
  ]
end
