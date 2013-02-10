require 'rake'


desc "Installs our dotfiles."
task :install do

  git_modules
  git_setup_author

  install_homebrew
  install_linkables
  install_folders
  install_fonts

  `chsh -s /bin/zsh`

end

desc "Updates our existing dotfiles."
task :update do

  git_main
  git_modules

  install_linkables
  install_folders
  install_fonts

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

def git_main

  `git fetch origin`
  `git reset --hard origin/master`
  `git merge origin/master`

end

def git_modules

  `git submodule update --init --recursive`
  `git submodule foreach 'git fetch origin; git reset --hard origin/master; git submodule update --recursive; git clean -dfx'`
  `git clean -dfx`

end

def git_setup_author

  puts
  puts "What is your git author name?"
  author_name = STDIN.gets.chomp
  
  puts
  puts "What is your git author email?"
  author_email = STDIN.gets.chomp

  `sed -e "s/AUTHOR_NAME/#{author_name}/g" -e "s/AUTHOR_EMAIL/#{author_email}/g" git/gitconfig.symlink.example > git/gitconfig.symlink`

  puts
  
end

def install_homebrew

  `which brew`
  unless $?.success?
    `ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`
  end

  `brew install ack ctags hub`

end

def install_linkables

  skip_all = false;
  overwrite_all = false;
  backup_all = false;

  linkables = Dir.glob('*/**/*{.symlink}')
  linkables.each do |linkable|
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

    `ln -s "$PWD/#{linkable}" "#{target}"` if not skip_all
  end

end

def install_folders

  folders = [
    ['bin'],
    ['zsh/prezto.fork', '.zprezto'],
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
