# devcontainer-drive-isssue

This repository has been created to recreate an issue with devcontainers in vscode in different drives

# Steps to reproduce

- Clone the [repository](https://github.com/BlexFire31/devcontainer-drive-isssue) into a **non** `C:` drive (like `D:` drive)
- Open the repository in VS Code
- Open the Command Palette and run `Remote-Containers: Rebuild and Reopen in Container`
- Once the dev container loads, you will notice that the files do not appear in the explorer of the sidebar
  **(This is the issue)**
- This problem does not occur if you clone the repository to `C:` drive  
  **All the files should be displayed regardless of which drive the container is loaded from**

---

Does this issue occur if I run docker compose from the command line?: No  
Does this issue occur when I load the devcontainer from a **non** `C:` drive?: Yes  
Does this issue occur when I load the devcontainer from `C:` drive?: No

# Logs

Logs of opening the container in `C:` drive [here](https://gist.github.com/BlexFire31/019ee5d405107909153fc7ddba0b080b)  
Logs of opening the container in `D:` drive [here](https://gist.github.com/BlexFire31/59d6b7cfbed19c135e7fd0fe0e035cd3)

---

> VS Code version:
>
> ```
> Version: 1.66.2
> Commit: dfd34e8260c270da74b5c2d86d61aee4b6d56977 Date: 2022-04-11T07:46:01.075Z (1 wk ago)
> Electron: 17.2.0
> Chromium: 98.0.4758.109
> Node.js: 16.13.0
> V8: 9.8.177.11-electron.0
> OS: Windows NT x64 10.0.19044Version: 1.66.2
> ```

> Remote OS Version:
>
> ```
> Ubuntu 20.04 LTS
> ```

> Docker Desktop version:
>
> ```
> Docker Desktop 4.7.1 (77678)
> ```

> `docker -v`
>
> ```
> Docker version 20.10.14, build a224086
> ```

> `docker-compose -v`
>
> ```
> Docker Compose version v2.4.1
> ```

> `wsl -l -v`
>
> ```
>   NAME                   STATE           VERSION
> * Ubuntu                 Stopped         1
>   docker-desktop         Running         2
>   docker-desktop-data    Running         2
> ```
