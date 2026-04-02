cask "claude-usage-monitor" do
  version "1.1.9"
  sha256 "758031c7bf0c02537cdb0b890473268146cc6bee4bd6024da106386ef47bf432"

  url "https://github.com/eunggg0/homebrew-tap/releases/download/v#{version}/ClaudeUsageMonitor-#{version}.zip"
  name "Claude Usage Monitor"
  desc "macOS menu bar app for monitoring Claude Code usage limits"
  homepage "https://github.com/eunggg0/homebrew-tap"

  depends_on macos: ">= :monterey"

  app "Claude Usage Monitor.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Claude Usage Monitor.app"]
  end

  uninstall launchctl: "com.claude.usage-monitor",
            quit:      "com.eunggg0.claude-usage-monitor"

  zap trash: [
    "~/Library/LaunchAgents/com.claude.usage-monitor.plist",
    "~/.claude-monitor",
  ]
end
