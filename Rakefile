require 'rake'


desc "Installs dotfiles."
task :install do

	git_setup
	git_modules

	install_system
	install_linkables
	install_folders
	install_fonts
	install_iterm_themes

	`chsh -s /bin/zsh`

end

desc "Updates shell."
task :updateshell do

	git_modules

	install_linkables
	install_folders
	install_fonts
	install_prezto

end

desc "Updates vim plugins."
task :updatevim do

	update_vim_plugins

end

desc "Removes our existing dotfiles."
task :uninstall do

	Dir.glob('**/*.symlink').each do |linkable|
		file = linkable.split('/').last.split('.symlink').last
		target = "#{ENV['HOME']}/.#{file}"

		# Remove all symlinks created during installation
		FileUtils.rm(target) if File.symlink?(target)

		# Replace any backups made during installation
		if File.exists?("#{ENV['HOME']}/.#{file}.backup")
			`mv "$HOME/.#{file}.backup" "$HOME/.#{file}"`
		end
	end

end

task :default => 'install'



private

def git_setup

	puts
	puts "What is your git author name?"
	author_name = STDIN.gets.chomp

	puts
	puts "What is your git author email?"
	author_email = STDIN.gets.chomp

	`sed -e "s/AUTHOR_NAME/#{author_name}/g" -e "s/AUTHOR_EMAIL/#{author_email}/g" git/gitconfig.template > git/gitconfig.symlink`

	puts

end

def git_modules

	`git pull --recurse-submodules`
	`git submodule update --init --recursive`

end

def install_system

	# Make sure prezto is setup
	install_prezto

	# Grab wanted brews
	`which brew`
	unless $?.success?
		puts "Must have homebrew installed and your paths setup correctly first!"
		return
	end

	puts
	puts "Please wait.. it may appear to hang for a minute or two."
	puts

	`brew install reattach-to-user-namespace tmux`
	`brew install cmake ctags uncrustify git git-flow`
	`brew install mercurial the_silver_searcher wget`
	`brew install macvim --override-system-vim --custom-icons --with-lua --with-luajit`
	`brew linkapps`

	# Now we can make sure vim plugins are installed
	install_vim_plugins

end

def install_linkables

	skip_all = false;
	overwrite_all = false;
	backup_all = false;

	links = Dir[File.join("#{ENV['PWD']}", '**', '*.{symlink}')].each do |linkable|
		overwrite = false
		backup = false

		file = linkable.split('/').last.split('.symlink').last
		target = "#{ENV['HOME']}/.#{file}"
		if File.exists?(target) or File.symlink?(target)
			unless skip_all or overwrite_all or backup_all
				puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
				case STDIN.gets.chomp
				when 'o' then overwrite = true
				when 'b' then backup = true
				when 'O' then overwrite_all = true
				when 'B' then backup_all = true
				when 'S' then skip_all = true
				when 's' then next
				end
			end

			FileUtils.rm_rf(target) if overwrite or overwrite_all
			`mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
		end

		`ln -s "#{linkable}" "#{target}"` if not skip_all
	end

end

def install_folders

	folders = [
		['zsh', '.zsh'],
		['vim', '.vim'],
		['zsh/prezto', '.zprezto'],
	]

	folders.each do |folder|
		source = folder[0]
		target = "#{ENV['HOME']}/#{folder[-1].chomp('.fork')}"
		if File.exists?(target) or File.symlink?(target)
			puts "Skipping #{target}"
		else
			`ln -s "$PWD/#{source}" "#{target}"`
		end
	end

end

def install_fonts

	fontdir = "#{ENV['HOME']}/Library/Fonts"
	FileUtils.mkdir_p(fontdir)

	fonts = Dir.glob('fonts/*')
	fonts.each do |font|
		file = font.split('/').last
		target = "#{fontdir}/#{file}"

		`cp -f "#{font}" "#{target}"`
	end

end

def install_iterm_themes
	`/usr/libexec/PlistBuddy -c "Add :'Custom Color Presets':'Solarized Light' dict" ~/Library/Preferences/com.googlecode.iterm2.plist }`
	`/usr/libexec/PlistBuddy -c "Merge 'colors/Solarized Light.itermcolors' :'Custom Color Presets':'Solarized Light'" ~/Library/Preferences/com.googlecode.iterm2.plist }`
	`/usr/libexec/PlistBuddy -c "Add :'Custom Color Presets':'Solarized Dark' dict" ~/Library/Preferences/com.googlecode.iterm2.plist }`
	`/usr/libexec/PlistBuddy -c "Merge 'colors/Solarized Dark.itermcolors' :'Custom Color Presets':'Solarized Dark'" ~/Library/Preferences/com.googlecode.iterm2.plist }`
end

def install_prezto

	FileUtils.rm("#{ENV['HOME']}/.zlogin")
	FileUtils.rm("#{ENV['HOME']}/.zlogout")
	FileUtils.rm("#{ENV['HOME']}/.zprofile")
	FileUtils.rm("#{ENV['HOME']}/.zshenv")

	# zpreztorc and zshrc are overidden and symlinked elsewhere
	`ln -s "#{ENV['PWD']}/zsh/prezto/runcoms/zlogin" "#{ENV['HOME']}/.zlogin"`
	`ln -s "#{ENV['PWD']}/zsh/prezto/runcoms/zlogout" "#{ENV['HOME']}/.zlogout"`
	`ln -s "#{ENV['PWD']}/zsh/prezto/runcoms/zprofile" "#{ENV['HOME']}/.zprofile"`
	`ln -s "#{ENV['PWD']}/zsh/prezto/runcoms/zshenv" "#{ENV['HOME']}/.zshenv"`

end

def install_vim_plugins

	puts
	puts "Please wait.. it may appear to hang for a minute or two."
	puts

	# Have Vundle install managed plugins
	`vim +BundleInstall +qall > /dev/null 2>&1`

	# Update YouCompleteMe plugin
	`cd $PWD/vim/bundle/YouCompleteMe && ./install.sh --clang-completer --omnisharp-completer`

end

def update_vim_plugins

	puts
	puts "Please wait.. it may appear to hang for a minute or two."
	puts

	# Have Vundle update managed plugins
	`vim +BundleUpdate +qall > /dev/null 2>&1`

	# Update YouCompleteMe plugin
	`cd $PWD/vim/bundle/YouCompleteMe && ./install.sh --clang-completer --omnisharp-completer`

end
