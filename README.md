# My Vim Configuration
This is my .vim directory, containing all my configurations for vim and the
associated plugins I use.

## Installation
Clone the repository:

    git clone git://github.com/sds/.vim.git ~/.vim

Add a symlink to `init.vim`...

    ln -s ~/.vim/init.vim ~/.vimrc

...or source it in your current `.vimrc` if you want to keep your current
settings:

    so ~/.vim/init.vim

Finally, run the update script to get all the plugins:

    cd ~/.vim && ./update.sh

You can run the update script at any time to fetch the latest changes from each
of the plugin repositories.

## Why don't you use submodules?
When I was first exposed to using submodules for managing plugins with
pathogen, I found them clunky and annoying. For example, the documentation tag
files would dirty the working tree, even though I didn't care that the tree of
the submodule was dirty.

While better alternatives may exist (I believe you can ignore dirty trees in
submodules from the containing repository with a recent version of git), I find
the approach of explicitly listing your plugins in a file and running a script
simpler and cleaner.

## License
[WTFPL][WTFPL]

[WTFPL]: http://en.wikipedia.org/wiki/WTFPL
