require 'rake'


desc "Installs dotfiles."
task :install do

    install_git_config
	install_system

end

desc "Updates dotfiles."
task :update do

    update_from_git

end

desc "Upgrade submodules."
task :upgrade do

    upgrade_submodules

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

def update_from_git

    # Update from personal github
    Dir.chdir('~/Public/iCloud/dotfiles') do
        `git pull --rebase`
        `git submodule sync; git submodule update`
    end

end

def upgrade_submodules

    # Upgrade submodules used by dotfiles
    Dir.chdir('~/Public/iCloud/dotfiles') do
        `git submodule foreach git pull origin master`
    end

end

def install_git_config

	puts
	puts "What is your git author name?"
	author_name = STDIN.gets.chomp

	puts
	puts "What is your git author email?"
	author_email = STDIN.gets.chomp

	`sed -e "s/AUTHOR_NAME/#{author_name}/g" -e "s/AUTHOR_EMAIL/#{author_email}/g" git/gitconfig.template > git/gitconfig.symlink`

	puts

end

def install_system

	# Grab wanted brews
	`which brew`
	unless $?.success?
		puts "Must have homebrew installed and your paths setup correctly first!"
		return
	end

	puts
	puts "Please wait.. it may appear to hang for a minute or two."
	puts

    puts "Installing applications from homebrew"

    `brew tap railwaycat/emacsmacport`
	`brew install wget git git-flow`
	`brew install the_silver_searcher cmake ctags uncrustify`
	`brew install macvim --override-system-vim --custom-icons`
    `brew install emacs-mac --with-spacemacs-icon`
	`brew install node hugo`
	`brew linkapps`

    # Install symlinks
    puts "Installing symlinks..."
	install_linkables
	install_folders

    # Install zsh
    puts "Installing zshell..."
	install_shell

    # Install fonts
    puts "Installing fonts..."
	install_fonts
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
		['emacs/spacemacs', '.emacs.d'],
		['vim', '.vim']
	]

	folders.each do |folder|
		source = "$PWD/#{folder[0]}"
		target = "#{ENV['HOME']}/#{folder[-1]}"
		if File.exists?(target) or File.symlink?(target)
			puts "Skipping #{target}"
		else
			`ln -s "#{source}" "#{target}"`
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

def install_shell

	shelldir = "#{ENV['HOME']}/.config/fish"
	FileUtils.rm(shelldir)
	FileUtils.mkdir_p(shelldir)
	`ln -s "#{ENV['PWD']}/fish/config.fish" "#{shelldir}/config.fish"`

	`grep -q '^/usr/local/bin/fish$' /etc/shells; or echo '/usr/local/bin/fish' | sudo tee -a /etc/shells`
	`chsh -s /usr/local/bin/fish`

end

