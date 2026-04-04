cask "claude-usage-monitor" do
  version "1.4.0"
  sha256 "b39829053bb9d562fc47d91fc9d4b1c4c981d86acf755e8f0d4a9feca9fe1cbe"

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
