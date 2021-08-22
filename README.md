# Allar's Dotfiles

This is my attempt at automating my developer environments. This is highly unstable.

# Required Setup

This requires you to have a Bitwarden account with an "SSH Key" named `login`. You can add your current ssh id_rsa to Bitwarden using the `bw_add_ssh_key.sh` script in the utils folder on a machine with your unlocked bitwarden vault i.e. `bw unlock`.

# Installation

## M1 Darwin

1. Install Brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install `chezmoi`

```
brew install chezmoi
```

3. Init and Apply me

```
chezmoi init --apply Allar
```

# Credits

These people have in no way endorsed this work. However, they have done all the hard work.

## Tom Payne

Created `chezmoi`, an excellent tool for managing dotfiles.

* https://github.com/twpayne
* https://www.chezmoi.io

## Mathias Bynens

The widely referenced dotfiles which can control darwin system preferences, among many other things.

* https://github.com/mathiasbynens
* ~/.macos — https://mths.be/macos
* https://github.com/mathiasbynens/dotfiles/blob/main/.macos