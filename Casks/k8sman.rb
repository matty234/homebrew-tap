cask "k8sman" do
  version "0.2.20"
  sha256 "6ccb557e33ff095e0fb8fbad72a56054d1f3d9b07c1fb957c0137001c0f105e0"

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
