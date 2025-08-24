# Changelog

> [!NOTE]  
> **2025-10-22** [Introduction of typefaces](#-new-install-fira-code-and-geist-mono)  

## 2025-10-24
### 📝 Documentation: Turn-key installation command
To make this a turn-key solution, include a command that'll encompass more of what is required, including pulling the repository and changing directory. The intent is to lower the required knowledge to publish these dotfiles from scratch on a new host and to make the process, albeit arguably negligibly so, faster (less commands to type), easier (less commands to remember), and more comfortable (the computer does the work instead of you).  
Note that the home directory may contain spaces, so it's wrapped up in quotation marks.

### 📝 Documentation: Versioning practices
Elaborate on versioning practices through [`Versioning.md`](../docs/Versioning.md). TThis will clarify the rationale behind using two different versioning schemes and how I differentiate [feature states](../docs/Versioning.md#features-states).

## 2025-10-23
### 🔧 Improvement: Alter typeface installation directory on Arch
`/usr/share/fonts` is under the purview of the package manager and should not be modified. Change to `/usr/local/share/fonts/`, as per the [official documentation](https://wiki.archlinux.org/title/Fonts).

### ✨ New: Changelog
Introduce this file to keep a record of changes and to outline rationale for these changes.

## 2025-10-22
### ✨ New: Ingress to initiate installation process
Added [`install.sh`](../install.sh) from where all the other scripts are intended to be called from. Execute the command `sudo ./install.sh` to initiate the installation process.

### ✨ New: Install Fira Code and Geist Mono
This change will install the typefaces that I use in my code editor. I use [Fira Code](https://github.com/tonsky/FiraCode) for the actual code documents, and [Geist Mono](https://vercel.com/font) for the editor interface.

Before installing any typefaces, the script will assert that the operating system is supported to assign the correct installation directory, or abort the script if the operating system isn't supported or if the script is unable to identify the system. Today, Arch Linux, MacOS, and Windows are all systems that I use and thus are supported.

The [typeface script](../scripts/typefaces.sh) will...
* Install files from the repository directory [`/assets/typefaces/`](../assets/typefaces/) by copying the files to where typefaces are installed on the system:
  * `/Library/Fonts` for MacOS.
  * `/usr/local/share/fonts` for Arch Linux.
  * `/mnt/c/Windows/Fonts` for Windows.
* Avoid copying files that already exist in the installation folder.
* Report how many files are found in the repository, report the action taken on each file (installed or skipped), and finally sum up how many of the files were installed.
* Give warnings if the [`/assets/typefaces/`](../assets/typefaces/) directory is missing, if the directory is empty, or if the installation directory doesn't exist.

### ✨ New: Utility scripts
Two utility scripts are included; one for assigning the installation directory for typefaces depending on the system, one for assisting with colour assignment in the terminal.

---

[⤶ Back to Read Me](../README.md)
