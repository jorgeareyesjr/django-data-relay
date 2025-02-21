# **Django Data Relay** Scripts

The **Django Data Relay** scripts are designed to be run from the command line in the project's root directory, so that the relative paths are correct. There is one script for installing the **Django Data Relay** and its dependencies, and another for launching it. Please note that the installation script only needs to be run once and must be executed before the **Django Data Relay** can be launched.

> [!NOTE]
> The **Django Data Relay** scripts use a shebang (#!) to specify the Bash interpreter. Please be aware of the following limitations:
>- Most Linux distributions and macOS come with `Bash` pre-installed, making it easy to execute these scripts without additional setup.
>- On Windows, the shebang may not be recognized in the Command Prompt. You can run the scripts in environments like [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install), [Cygwin](https://cygwin.com/), or [Git Bash](https://gitforwindows.org/), where the shebang will work as expected.


## 📚 Table of Contents
- [Abstract](#-abstract)
- [Usage](#-usage)
- [Pip install vs Pipenv install](#-pip-install-vs-pipenv-install)

## 🌱 Abstract

The **Django Data Relay** scripts are designed to streamline the installation and setup process for users, eliminating the need for manual configuration. By automating the installation process, it simplifies the steps required to get started with the **Django Data Relay**. Leveraging Bash and shebang for efficient execution, users can execute the provided scripts to quickly deploy and use the application rather than spending time on setup, enhancing their overall experience.

## ⚡ Usage

To run the scripts, use the following commands:

```bash
# To run the install script
./scripts/install.sh

# To run the start script
./scripts/start.sh
```

> [!NOTE]
> Make sure all scripts are executable. You can do this by running the following command in the **Django Data Relay**'s' root directory:
> `chmod +x scripts/*.sh`

## 🧪 Pip install vs. Pipenv install

Two commonly used tools for managing Python packages is `pip` and `pipenv`. While both serve the purpose of installing packages, they have different functionalities and use cases. Understanding the differences between these is beneficial, especially when managing multiple virtual environments.

- **Pip**: As the standard package manager for Python, `pip` can work with a `requirements.txt` file, but does not manage virtual environments by itself. Managing virtual environments requires separate tools like `venv` or `virtualenv`. Additionally, there is no built-in feature for package version locking.

- **Pipenv**: `Pipenv` combines Python package management with virtual environment management, simplifying the workflow for managing dependencies in Python projects. Instead of a `requirements.txt` file,
`Pipenv` uses a `Pipfile` and `Pipfile.lock` to track project dependencies. Unlike it's counterpart, `Pipenv` has support for package version locking.

> [!NOTE]
> By default, `pip` packages globally unless used within a virtual environment. This means that the installed packages are available to all Python projects on the system. `Pipenv`, on the other hand, is designed to work at a project level and only focuses on local project environments, ensuring projects remain self-contained.
