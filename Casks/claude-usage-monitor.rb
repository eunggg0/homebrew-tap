cask "claude-usage-monitor" do
  version "1.4.2"
  sha256 "42c809b5ea52a5fe2eb1e1f11bac7cc3b107529c7e64311c7b423a579cc5ff5b"

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
