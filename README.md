# dotfiles

My dotfiles, powered by Ansible. Automatically configures a full development environment using a single command.

## Features

### What _Is_ Done

-   [asdf](https://asdf-vm.com/): installs python, java, nodejs and ruby
-   [brew](https://brew.sh/): installs golang and a host of other utilities
-   [rust](https://rust-lang.org/): installs rust and some cargo tools
-   [fish](https://fishshell.com/): sets fish as the default shell
-   [git](https://git-scm.com/): sets up my git configuration, as well as a bunch of my personal repositories.
-   [vscode](https://code.visualstudio.com/): sets up my personal user settings and extensions

### What _Is Not_ Done

-   Install any of the prerequisites
-   Set up any credentials (SSH, GPG, AWS, GCP, etc)
-   Back up anything before writing (you should do this yourself first)

## Installation

### Prerequisites

#### All Platforms

-   Ansible 2.10

#### macOS

-   macOS 11.0
-   Xcode (or at least the Command Line Tools)
-   Homebrew

To install, simply clone the repo to `~/dotfiles` and run `./install` in a shell. If you have all prerequisites in place, it should fully execute without any problems.

If you aren't me, the author, then before running this playbook you should fork this repo and update the values in `group_vars/local` to better reflect your identity and needs. Additionally, you can write a `.tool-versions` file in your home directory first to automatically have `asdf` install some versions for you (as long as they're for any of the plugins configured to be installed).

Finally, if you want to run specific parts of the playbook, pass the `--tags` flag to the script with any of the roles declared in `dotfiles.yml`. You can also set `DOTFILES_HOME` in your environment to refer to your clone if it's installed somewhere that isn't `~/dotfiles`.

## License

This library is licensed under the GNU General Public License v3.0 or later

See [COPYING](./COPYING) to see the full text.
