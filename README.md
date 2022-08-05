### dotfiles setup

```zsh
make
```

### key bindings
```zsh
mkdir ~/Library/KeyBindings
cat << EOF > ~/Library/KeyBindings/DefaultKeyBinding.dict
{
    "^j" = "insertNewline:";
    "^u" = "deleteToBeginningOfLine:";
    "^w" = "deleteWordBackward:";
    "~d" = "deleteWordForward:";
    "~b" = "moveWordBackward:";
    "~f" = "moveWordForward:";
}
EOF
```

Check "Use Option as Meta key" on Terminal Preferences.

### key repeats
```zsh
defaults write -g KeyRepeat -int 1
```

