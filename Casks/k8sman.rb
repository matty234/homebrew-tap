cask "k8sman" do
  version "0.2.13"
  sha256 "ba9fd264cf681a4c9e27a56111f3a76d272b6f49af9bd7c4b5f456699ffb5694"

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
