# Django Data Relay

Launch a local Django development server that comes with pre-populated with data and pre-configured to enforce HTTPS for secure connections. Serving as a bridge between front-end and back-end systems, the **Django Data Relay** is specifically designed to create an environment that closely simulates a production setting for secure application prototyping and development. Collect, aggregate, and securely deliver data from various sources to support data-driven applications in a rapid and scalable manner.

> [!WARNING]
> The **Django Data Relay** is not suitable for production use - it runs on Django's lightweight development server, which is intended solely for development purposes. For more information, refer to the [Django documentation](https://docs.djangoproject.com/en/5.1/ref/django-admin/#runserver). Configuring a production server is beyond the scope of this project.

## 📚 Table of Contents
- [Abstract](#-abstract)
- [Built With](#-built-with)
- [Use Cases](#-use-cases)
- [Requirements](#-requirements)
- [Cloning vs. Forking](#-cloning-vs-forking)
- [Installation](#-installation)
- [Environment Configuration](#-environment-configuration)
- [Getting Started](#-getting-started)
- [Feedback and Contributions](#-feedback-and-contributions)
- [Code of Conduct](#-code-of-conduct)
- [License](#-license)

## 🌱 Abstract

Developers face a range of challenges when working in local development environments. Connecting to databases, collecting data, managing migrations, testing security configurations, and replicating production environments accurately can be time-consuming and prone to errors. The **Django Data Relay** addresses all of these concerns by creating a local Django development server that includes pre-populated data, enforces HTTPS, and simulates a production environment for a more realistic development experience. For developers, having access to a secure development server that can closely mirror production settings is particularly important, especially when building and testing applications that handle sensitive data. In addition, the **Django Data Relay** takes advantage of Django's extensive out-of-the-box features, including:

- Support for simultaneous connections to various types of databases
- ORM (Object-Relational Mapping) for interacting with databases using Python code instead of SQL queries
- A ready-to-use admin interface for managing application data
- Built-in security features, including an authentication system for managing accounts and permissions
- A large and active community for resources and support

## 🛠️ Built With

The **Django Data Relay** is built using a combination of powerful tools and technologies, including:

- **Scripting Languages:**
    - [Bash](https://www.gnu.org/software/bash/) - A command-line interface and scripting language used primarily in Unix and Linux operating systems

- **Programming Languages:**
    - [Python](https://www.python.org/) - A high-level, general-purpose programming language

- **Frameworks:**
    - [Django](https://www.djangoproject.com/) - A free and open-source, Python-based web framework that runs on a web server

- **Development Tools:**
    - [pip](https://pip.pypa.io/en/stable/) - A Python package manager used for the installation and management of libraries and dependencies
    - [Pipenv](https://pipenv.pypa.io/en/latest/) - A tool that combines package management and virtual environment management for Python projects
    - [django-extensions](https://pypi.org/project/django-extensions/) - A collection of custom extensions for the Django Framework
    - [Werkzeug](https://pypi.org/project/Werkzeug/) - A comprehensive library for building web applications in Python that follows the Web Server Gateway Interface (WSGI) standard

- **Security:**
    - [pyOpenSSL](https://pypi.org/project/pyOpenSSL/) - A high-level Python wrapper around a subset of the OpenSSL library, designed to simplify the use of OpenSSL functions in Python applications
    - [mkcert](https://github.com/FiloSottile/mkcert) - A command-line tool to create locally trusted SSL certificates for development purposes

- **Configuration Management:**
    - [python-dotenv](https://pypi.org/project/python-dotenv/) - A library that allows developers to manage environment variables in Python applications

## 💡 Use Cases

The **Django Data Relay** leverages Django's powerful built-in features to support a diverse range of applications and services, including:

- APIs and web services
- Content Management Systems (CMS)
- Data-driven applications
- E-commerce platforms
- Social Network platforms
- Booking and Reservation systems

> [!NOTE]
> Django is considered an opinionated framework, meaning it promotes a set of conventions and best practices to help developers structure and standardize their applications efficiently.

## 🔧 Requirements

*Before* installation, take a moment to verify you have support for the following environment and programs on your system. Skipping this step may lead to issues during the installation process.

> [!NOTE]
> The **Django Data Relay** includes scripts that automate various tasks. These scripts use a shebang (`#!`) to specify the `Bash` interpreter, ensure the specified interpreter (e.g., `/bin/bash`) is available on your system.
>- Most Linux distributions and macOS come with `Bash` pre-installed, making it easy to execute these scripts without additional setup.
>- On Windows, the shebang may not be recognized in the Command Prompt. You can run the scripts in environments like [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install), [Cygwin](https://cygwin.com/), or [Git Bash](https://gitforwindows.org/), where the shebang will work as expected.

```shell
# Ensure Git is installed
# https://git-scm.com/downloads

# Ensure Python is installed
# https://www.python.org/downloads/

# Ensure pip is installed
# https://pip.pypa.io/en/stable/installation/

# Ensure Pipenv is installed
# https://pipenv.pypa.io/en/latest/installation.html

# Ensure mkcert is installed
# https://github.com/FiloSottile/mkcert?tab=readme-ov-file#installation
```

## 🧪 Cloning vs. Forking

To foster effective collaboration, I thought it would be helpful to provide a quick refresher on two essential Git commands: `git clone` and `git fork`. Understanding the differences between these is crucial for successful contributions. I've outlined the key distinctions between the two below. For more information, refer to the [Git documentation](https://git-scm.com/book/ms/v2/GitHub-Contributing-to-a-Project).

- **Clone**: Use `git clone` to create a local copy of the **Django Data Relay** on your machine. This is ideal for personal use or testing without making changes to the original project. Refer to the [installation](#-installation) section for more details.

- **Fork**: Use the "Fork" button on GitHub to create a personal copy of the **Django Data Relay** under your account. This is recommended if you want to contribute to the project. After forking, you can clone your forked repository locally, make changes, and submit a pull request to the original repository. Refer to the [CONTRIBUTING](https://github.com/jorgeareyesjr/django-data-relay/blob/main/CONTRIBUTING.md) document for more details.

## ⚡ Installation

To install the **Django Data Relay**, follow these steps:

```shell
# 1. Open a terminal

# 2. Clone the repository
git clone https://github.com/jorgeareyesjr/django-data-relay.git

# 3. Navigate to the project
cd django-data-relay

# 4. Run the install script
./scripts/install.sh

# 5. Verify environment configuration (see "Environment Configuration" for more details)
```

## ⚙️ Environment Configuration

*Before* getting started, take a moment to verify the environment configuration variables in the `.env` file are correctly set. These environment variables are initialized by the installation script and are essential for the proper configuration of the **Django Data Relay**. As a safety precaution, be sure to update the default values as needed.

```shell
# Required environment configuration variables
# SECRET_KEY
# DEBUG
# ALLOWED_HOSTS_LIST
```

> [!WARNING]
> Remember, the internet is a hostile environment. DO NOT commit the `.env` file to a public repository. Instead, add it to your `.gitignore` file. For security purposes, these settings should be kept confidential.

## 🚀 Getting Started

To launch the **Django Data Relay**, follow these steps:

```shell
# 1. Open a terminal

# 2. Navigate to the project

# 2. Run the start script
./scripts/start.sh
```

## 📬 Feedback and Contributions

I welcome feedback and suggestions! Whether you have encountered any bugs, have ideas for enhancements, or simply want to share some feedback, you're encouraged to connect! Each insight and contribution is an opportunity to make the **Django Data Relay** more robust and user-friendly. Refer to the [CONTRIBUTING](https://github.com/jorgeareyesjr/django-data-relay/blob/main/CONTRIBUTING.md) document for more details.

## 👾 Code of Conduct

To create a welcoming and inclusive environment for everyone, please treat one another with respect and kindness. I encourage all participants and contributors to engage in positive communication and collaboration. Refer to the [CODE_OF_CONDUCT](https://github.com/jorgeareyesjr/django-data-relay/blob/main/CODE_OF_CONDUCT.md) for more details.

## 🌐 License

This project is licensed under the Apache License 2.0. Refer to the [LICENSE](https://github.com/jorgeareyesjr/django-data-relay/blob/main/LICENSE.md) for more details.
