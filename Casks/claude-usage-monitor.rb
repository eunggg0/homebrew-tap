cask "claude-usage-monitor" do
  version "1.3.2"
  sha256 "796137b65f0483f79b6749c477c0fd20aa3fce215a18b253450f2d486fd38e52"

  url "https://github.com/eunggg0/homebrew-tap/releases/download/v#{version}/ClaudeUsageMonitor-#{version}.zip"
  name "ClaudeBar"
  desc "macOS menu bar app for monitoring Claude Code usage limits"
  homepage "https://github.com/eunggg0/homebrew-tap"

  depends_on macos: ">= :monterey"

  app "ClaudeBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ClaudeBar.app"]
  end

  uninstall launchctl: "com.claude.usage-monitor",
            quit:      "com.eunggg0.claude-usage-monitor"

  zap trash: [
    "~/Library/LaunchAgents/com.claude.usage-monitor.plist",
    "~/.claude-monitor",
  ]
end
