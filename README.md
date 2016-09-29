# .vim

This is my `.vim` directory, containing all my configurations for `vim` and the
associated plugins I use.

## Requirements

Vim 7.4

## Installation

Clone the repository:

    git clone git://github.com/sds/.vim.git ~/.vim

Alternatively, you can source it at the beginning of your current `.vimrc` if
you want to keep your current settings along with the ones defined in this
repository:

    source ~/.vim/vimrc

Finally, run the `update` script to get all the plugins:

    cd ~/.vim && ./update

You can run the `update` script at any time to fetch the latest changes from
each of the plugin repositories. If you have a lot of plugins and want to speed
this up, you could manually specify a revision of the plugin that you want, so
that it only updates when you change the revision.

## Configuration

Configuration files are broken up into various categories in the `config`
directory, including settings for individual plugins (if you're familiar with
the directory layout for `vim`, `config` replaces the `plugin` directory).

The `after`, `autoload`, `ftdetect`, `ftplugin`, and `indent` directories
act in the way `vim` normally uses them. To summarize:

* `after`: Initialization to run "after" `vim` has finished loading. Useful
  for defining shortcuts that override default key mappings.

* `autoload`: Contains scripts which are "lazy-loaded". For example, when
  calling `pathogen#infect()`, `vim` looks for the `infect` function in
  `autoload/pathogen.vim`.

* `ftdetect`: Any scripts that are used to determine the type of a file.

* `ftplugin`: Any plugins that are only run for a specific filetype. For
  example, if `vim` determines a file is of type `html`, it will run the
  commands found in `ftplugin/html.vim`.

* `indent`: The same as `ftplugin`, except specifically for setting up
  indent settings for specific filetypes.

## Managing Plugins

The `plugins.list` file contains the locations of the repositories for the
plugins. Plugins are stored in the `bundles` directory, which is read by
[Pathogen](http://www.vim.org/scripts/script.php?script_id=2332) to load
all the plugins.

To remove a plugin, simply remove it from `plugins.list` and run the
`update` script.

### Why not use submodules?

When I was first exposed to using submodules for managing plugins with
Pathogen, I found them clunky and annoying. For example, the documentation tag
files would dirty the working tree, even though I didn't care that the tree of
the submodule was dirty.

While better alternatives may exist (I believe you can ignore dirty trees in
submodules from the containing repository with a recent version of git), I find
the approach of explicitly listing your plugins in a file and running a script
simpler and cleaner.

## License

[WTFPL](http://en.wikipedia.org/wiki/WTFPL)
