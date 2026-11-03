# matty234/homebrew-tap

Homebrew casks for [k8sman](https://github.com/matty234/k8sman), a fast, native Kubernetes IDE for your Mac.

```sh
brew trust matty234/tap   # Homebrew 7+: allow this third-party tap
brew install --cask matty234/tap/k8sman
```

k8sman updates itself (Sparkle), so `brew upgrade` leaves it alone unless you run `brew upgrade --greedy`.
This cask is bumped automatically by k8sman's release workflow.

> k8sman is currently ad-hoc signed, not notarized. On first launch, open
> System Settings → Privacy & Security and click **Open Anyway** (or
> Control-click the app and choose **Open**).
