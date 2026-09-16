cask "spectra" do
  version "0.1.0"
  sha256 "2aefa345fdc1a2f96073e8409018c7cbd9995b92f3e5b8afc67414c820844aab"

  url "https://github.com/andrebrito16/spectra/releases/download/v#{version}/Spectra-#{version}.dmg"
  name "Spectra"
  desc "Native macOS Kubernetes IDE"
  homepage "https://github.com/andrebrito16/spectra"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Spectra.app"

  zap trash: [
    "~/Library/Application Support/Spectra",
    "~/Library/Preferences/com.andrebritodev.spectra.plist",
    "~/Library/Saved Application State/com.andrebritodev.spectra.savedState",
  ]
end
