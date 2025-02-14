# Django Data Relay

Launch a local Django development server pre-populated with data and configured to use HTTPS for secure connections. The **Django Data Relay** is designed to serve as a secure bridge between front-end and back-end systems, facilitating seamless data transfer in a more realistic and secure environment. Collect, aggregate, and provide data from various sources to support data-driven applications in a rapid, secure, and scalable fashion.

> [!WARNING]
> The **Django Data Relay** is not suitable for production use - it runs on Django's lightweight development server, which is intended solely for development purposes. For more information, refer to the [Django documentation](https://docs.djangoproject.com/en/5.1/ref/django-admin/#runserver). Configuring a production server is beyond the scope of this project.

## Table of Contents
- [Abstract](#abstract)
- [Built with](#built-with)
- [Use Cases](#use-cases)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Environment Configuration](#-environment-configuration)
- [Getting Started](#getting-started)
- [Feedback and Contributions](#feedback-and-contributions)

## 🌱 Abstract

Developers face a range of challenges when working in local development environments. Tasks such as connecting to databases, acquiring data, managing migrations, testing security configurations, and replicating production environments accurately can be time-consuming and prone to errors. The **Django Data Relay** addresses all of these concerns by providing a secure, pre-populated local Django development server that enforces HTTPS and can mimic a production environment. For developers, having access to a secure development server that can closely mirror productions settings is particularly important, especially when building and testing applications that handle sensitive data. The **Django Data Relay** is built with Django, so it also includes:

- Support for simultaneous connections to a variety of different database types
- ORM (Object-Relational Mapping) for interacting with databases using Python code instead of SQL queries
- A ready-to-use admin interface for managing application data
- Built-in security features, including an authentication system for managing accounts and permissions
- A large and active community for resources and support

## 🔨 Built With

This project was built using the following technologies:

- **Programming Languages:**
    - [Python](https://www.python.org/) - Python is a high-level, general-purpose programming language.

- **Frameworks:**
    - [Django](https://www.djangoproject.com/) - Django is a free and open-source, Python-based web framework that runs on a web server.

- **Development Tools:**
    - [django-extensions](https://pypi.org/project/django-extensions/) - A collection of custom extensions for the Django Framework.
    - [Werkzeug](https://pypi.org/project/Werkzeug/) - A comprehensive library for building web applications in Python that follows the Web Server Gateway Interface (WSGI) standard.

- **Security:**
    - [pyOpenSSL](https://pypi.org/project/pyOpenSSL/) - A high-level Python wrapper around a subset of the OpenSSL library, designed to simplify the use of OpenSSL functions in Python applications.
    - [mkcert](https://github.com/FiloSottile/mkcert) - A command-line tool to create locally trusted SSL certificates for development purposes.

- **Configuration Management:**
    - [python-dotenv](https://pypi.org/project/python-dotenv/) - A library that allows developers to manage environment variables in Python applications.

## 💡 Use Cases

Django is well known and well-suited for building complex and robust web applications. As such, the **Django Data Relay** harnesses Django's powerful built-in features to support a diverse range of applications and services. Examples include:

- APIs and web services
- Content Management Systems (CMS)
- Data-driven applications
- E-commerce platforms
- Social Network platforms
- Booking and Reservation systems

> [!NOTE]
> Django is considered an opinionated framework, meaning it promotes a set of conventions and best practices to help developers structure and standardize their applications efficiently.

## 🔧 Prerequisites

*Before* installation, ensure you have the following programs installed and working on your computer:

```shell
# Ensure Git is installed
# Visit https://git-scm.com to download and install console Git if not already installed

# Ensure Python is installed, requires version 3.13
# Visit https://www.python.org to download and install Python if not already installed

# Ensure pip is installed
# Visit https://pip.pypa.io/en/stable/installation/ to download and install pip if not already installed

# Ensure pipenv is installed
# Visit https://pipenv.pypa.io/en/latest/ to download and install pipenv if not already installed

# Ensure mkcert is installed
# Visit https://github.com/FiloSottile/mkcert to download and install mkcert if not already installed
```

## ⚡ Installation

To install the **Django Data Relay**, follow these steps:

```shell
# 1. Open a terminal (Command Prompt or PowerShell for Windows, Terminal for macOS or Linux)

# 2. Clone the repository
git clone https://github.com/jorgeareyesjr/django-data-relay.git

# 3. Navigate to the project's root directory

# 4. Generate a local SSL certificate for your localhost/loopback IP address
mkcert -cert-file base/cert.pem -key-file base/key.pem localhost 127.0.0.1

# 5. Configure environment variables (see "Environment Configuration" for more details)
```

## 🎮 Environment Configuration

To configure the **Django Data Relay** environment variables, follow these steps:

```shell
# 1. Navigate to the project root

# 2. Create a .env file
touch .env

# 3. Add the following code snippet and update the relevant environment variables

# SECURITY WARNING: keep the secret key used in production secret!
# SECURITY NOTE: use a long and complex key comprised of uppercase, lowercase, numbers, and special characters.
SECRET_KEY = 'A-S4MPL3-S3CR3T-K3Y-C0MPRIS3D-0F-L0NG-C4R4CT3RS'
# SECURITY WARNING: don't run with debug turned on in production!
# SECURITY NOTE: the DEBUG setting should be set to a boolean value.
DEBUG = 'false'
# SECURITY WARNING: don't expose your project to malicious requests!
# SECURITY NOTE: if DEBUG is set to `false`, ALLOWED_HOSTS requires a value.
ALLOWED_HOSTS_LIST ='www.example.com, www.example2.com'
```

> [!WARNING]
> The **Django Data Relay** uses these environment variables to configure itself. Remember, the internet is a hostile environment. DO NOT commit this file to a public repository. Instead, add this file to your `.gitignore` file. These settings should be kept confidential for security purposes.

## 🚀 Getting Started

To use the **Django Data Relay**, follow these steps:

```shell
# 1. Navigate to the project's root directory

# 2. Activate a new virtual environment
pipenv shell

# 2. Install dependencies
pipenv install

# 4. Configure environment variables

# 5. Run the secure development server
python base/manage.py runserver_plus --cert-file cert.pem --key-file key.pem
```

> [!Note]
> Ensure to deactivate the virtual environment when the application is not in use. Skipping this step may cause confusion about which virtual environment is active. If a mixup occurs, scripts may rely on the wrong dependencies, possibly leading to unexpected behavior or errors. To deactivate the virtual environment, run the `exit` command.

## 📬 Feedback and Contributions

Whether you have feedback, have encountered any bugs, or have suggestions for enhancements, you're encouraged to connect! Each insight and contribution is an opportunity to make the **Django Data Relay** more robust and user-friendly. Please consider the following guidelines while contributing:

- **Code Style**: Maintain a consistent code style for readability.
- **Documentation**: Ensure well-documented code for effective collaboration.
- **Testing**: Thoroughly test your changes before submitting a pull request.
- **Issue Tracker**: Check the Issue Tracker for tasks.
- **Code Review**: All contributions undergo a code review process.
- **Licensing**: Contributions are licensed.
