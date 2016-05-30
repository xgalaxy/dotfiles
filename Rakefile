require 'rake'


desc "Installs dotfiles."
task :install do

    install_homebrew
    install_zsh

    setup_osx
    setup_zsh
    setup_git
    setup_nvim

end

desc "Updates dotfiles."
task :update do

    install_homebrew

    setup_osx
    setup_zsh
    setup_git
    setup_nvim

    # Updates from AppStore
    `sudo softwareupdate -i -a`

end

task :default => 'install'

private

def install_homebrew

    `which brew`
    unless $?.success?
        puts "Installing Homebrew."
        `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    end

    puts "Installing dependencies from Homebrew."
    `bubu && brew bundle && brew linkapps`

end

def install_zsh

    `grep -q '^/usr/local/bin/zsh$' /etc/shells; or echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells`
    `chsh -s /usr/local/bin/zsh`

end

def setup_osx
    # Disable press-and-hold for keys in favor of key repeat.
    `defaults write -g ApplePressAndHoldEnabled -bool false`

    # Use AirDrop over every interface.
    `defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1`

    # Always open everything in Finder's list view.
    `defaults write com.apple.Finder FXPreferredViewStyle Nlsv`

    # Show the ~/Library folder.
    `chflags nohidden ~/Library`

    # Set a really fast key repeast.
    #`defaults write NSGlobalDomain KeyRepeat -int 0`

    # Set the Finder prefs for showing a few different volumes on the Desktop.
    #`defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true`
    #`defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true`

    # Run the screensaver if we're in the bottom-left hot corner.
    `defaults write com.apple.dock wvous-bl-corner -int 5`
    `defaults write com.apple.dock wvous-bl-modifier -int 0`

    # Hide Safari's bookmark bar.
    `defaults write com.apple.Safari ShowFavoritesBar -bool false`

    # Setup Safari for development.
    `defaults write com.apple.Safari IncludeInternalDebugMenu -bool true`
    `defaults write com.apple.Safari IncludeDevelopMenu -bool true`
    `defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true`
    `defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true`
    `defaults write NSGlobalDomain WebKitDeveloperExtras -bool true`

end

def setup_zsh

    source = "#{ENV['HOME']}/.dots/zsh/zshrc.symlink"
    target = "#{ENV['HOME']}/.zshrc"
    install_link(source, target)

end

def setup_git

    puts
    puts "What is your git author name?"
    author_name = STDIN.gets.chomp

    puts
    puts "What is your git author email?"
    author_email = STDIN.gets.chomp

    `sed -e "s/AUTHOR_NAME/#{author_name}/g" -e "s/AUTHOR_EMAIL/#{author_email}/g" git/gitconfig.template > git/gitconfig.symlink`

    puts

    source = "#{ENV['HOME']}/.dots/git/gitconfig.symlink"
    target = "#{ENV['HOME']}/.gitconfig"
    install_link(source, target)

    source = "#{ENV['HOME']}/.dots/git/gitignore.symlink"
    target = "#{ENV['HOME']}/.gitignore"
    install_link(source, target)

end

def setup_nvim

    source = "#{ENV['HOME']}/.dots/nvim"
    target = "#{ENV['HOME']}/.config/nvim"
    install_link(source, target)

end

def install_link(source, target)

    if File.exists?(target) or File.symlink?(target)
        FileUtils.rm_rf(target)
    end

    puts "Installing symlink: #{source} -> #{target}"
    `ln -s "#{source}" "#{target}"`

end

