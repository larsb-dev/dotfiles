# VS Code Dotfiles Workspace

This repository contains configuration files and resources to set up and customize the Visual Studio Code environment. Below is an overview of the folder structure and the purpose of each file:



## Folder Structure

```
keybindings.json         # Custom keybindings for VS Code
settings.json            # User or workspace settings for VS Code
tasks.json               # Recommended: Move to .vscode/tasks.json for workspace tasks

extensions/
  extensions.json        # Recommended: Move to .vscode/extensions.json for recommended extensions
  global.txt             # List of globally installed extensions (optional)
  install.sh             # Script to install extensions from global.txt

snippets/                # Custom code snippets for VS Code
```

## File & Folder Descriptions

- **keybindings.json**: Contains custom keyboard shortcuts for VS Code.
- **settings.json**: Stores user or workspace settings for VS Code.
- **tasks.json**: Defines custom tasks for a workspace.
- **extensions/extensions.json**: Lists recommended workspace extensions.
- **extensions/global.txt**: A list of extensions to be installed globally.
- **extensions/install.sh**: Bash script to install all extensions listed in `global.txt`.
- **snippets/**: Directory for custom code snippets.

## Setup Instructions

1. **Move Recommended Files:**
   - Move `tasks.json` to `.vscode/tasks.json` in the project's root.
   - Move `extensions/extensions.json` to `.vscode/extensions.json`.

2. **Install Recommended Extensions:**
   - Install the recommended extensions listed in `.vscode/extensions.json` by accepting the auto-install prompt in VS Code.
   - Run `extensions/install.sh` to install extensions from `global.txt` globally.

3. **Apply Settings and Keybindings:**
    - To apply custom settings and keybindings globally, create symbolic links from this repository to the VS Code user settings directory:

       ```sh
       cd ~/Library/Application\ Support/Code/User

       # Backup existing files
       mv settings.json settings.json.bak
       mv keybindings.json keybindings.json.bak
       mv snippets snippets.bak

       # Create symlinks
       ln -s ~/dotfiles/vscode/settings.json settings.json
       ln -s ~/dotfiles/vscode/keybindings.json keybindings.json
       ln -s ~/dotfiles/vscode/snippets snippets
       ```

---

**Note:** The `.vscode/` folder is the standard location for workspace-specific configuration files in VS Code. Keeping `tasks.json` and `extensions.json` there ensures they are automatically recognized and applied by VS Code.
