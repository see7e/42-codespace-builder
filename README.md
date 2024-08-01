---
title: 42-codespace-builder
tags:
  - studies
  - programming
use: Documentation, DevOps, GitHub Actions, Docker, Dockerfile, GitHub, GitHub Actions
languages: YAML, Dockerfile, Shell
dependences: GitHub, Docker, GitHub Actions
---

<details> <summary>Table of Contents 🔖</summary>

- [42-codespace-builder Documentation](#42-codespace-builder-documentation)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Project Objective](#project-objective)
  - [Getting Started](#getting-started)
  - [Configuration](#configuration)
    - [Configuring necessary permitions on GitHub repository](#configuring-necessary-permitions-on-github-repository)
  - [Usage](#usage)
    - [Building from the Dockerfile (optional)](#building-from-the-dockerfile-optional)
  - [Contributing](#contributing)
  - [License](#license)

</details>

---

> [!INFO]
> `UPDATE`: After start wworking on Docker, I've discovered that with the instalation of Docker Desktop, it also install the WSL (Windows Subsystem for Linux) and the Ubuntu 20.04 LTS. So you can work with a Linux system running native on Windows. Without worrying with the usage limit of GH Codespaces.
>
> `TIP`: The path to the Windows files is `/mnt/c/` and the path to the Linux files is `/home/`. So you can access the Windows files from the Linux system and vice-versa.
> There's a very good video about it:
> - [Windows Subsystem For Linux | WSL Explained](https://www.youtube.com/watch?v=kZ2SNBY2FPw)


# 42-codespace-builder Documentation

## Introduction

The 42-codespace-builder project automates the creation of a Codespace using GitHub Actions when a specific branch is created. This project is designed to increase productivity by enabling the creation and testing of projects outside of the 42 physical environment. This documentation provides an overview of the project, its objectives, prerequisites, and instructions for usage.

## Prerequisites

Before using the 42-codespace-builder, make sure you have the following prerequisites in place:

- A GitHub repository where you intend to set up Codespaces.
- Permissions to create and manage GitHub Actions for the repository.
- A GitHub token with appropriate permissions (usually provided by `secrets.GITHUB_TOKEN`).

## Project Objective

The primary objective of this project is to automate the creation of Codespaces for your GitHub repository. The Codespaces are configured using the `.devcontainer.json` file, and the process is initiated through a GitHub Actions workflow. Below is an overview of the key components:

- **GitHub Actions Workflow**: A workflow is defined in a YAML file, which is triggered when a specific branch is created or updated. This workflow uses the `see7e/42-codespace-builder` Action to create a Codespace.

- **`.devcontainer.json` Configuration**: This JSON file specifies the configuration for the Codespace. It includes settings for Docker, Visual Studio Code extensions, workspace mounting, post-creation commands, and more.

## Getting Started

To get started with the 42-codespace-builder, follow these steps:

1. Fork or clone this repository to your own GitHub account or local machine.
2. Ensure that your GitHub repository is set up and that you have the necessary permissions to manage Actions.

```
42-codespace-builder/
├── .github/
│   └── workflows/
│       └── create-codespace.yml  # GitHub Actions workflow for creating Codespaces
├── Dockerfile                    # Dockerfile for setting up the Codespace container
├── .gitignore                    # Gitignore file for specifying ignored files/directories
├── LICENSE                       # License file
├── README.md                     # Project documentation
├── action.yml                    # GitHub Actions metadata file
├── .devcontainer.json            # Example Codespace configuration file
└── ...                           # Other project-related files
```

3. When in need to test the Codespace, create a new `42` branch in your repository. This will trigger the GitHub Actions workflow, which will create a Codespace using the configuration specified in the `.devcontainer.json` file.

## Configuration

The `.devcontainer.json` file contains the configuration for the Codespace. You can customize this file to match your project's specific requirements. Refer to the [Project Objective](#project-objective) section for details on the available configuration options.

### Configuring necessary permitions on GitHub repository

To manage GitHub Actions, you need the necessary permissions. The default permissions are usually adequate for most cases. These permissions are tied to your role in the repository.

-   **Owner:** Owners have full control over the repository and its settings, including Actions. If you are the owner, you already have the necessary permissions.
-   **Collaborator:** Collaborators can contribute to the repository and have limited administrative capabilities. Collaborators can create and manage GitHub Actions workflows.
-   **Contributor:** Contributors can make pull requests to the repository but have limited control over repository settings.
-   **Organization:** For organization repositories, permissions are determined by the role you have within the organization. If you are part of an organization, ensure you have the necessary permissions within that organization to manage Actions.

## Usage

To use the 42-codespace-builder, follow these steps:

1. Ensure that you have completed the prerequisites and set up your GitHub repository as described in the [Getting Started](#getting-started) section.

2. Customize the `.devcontainer.json` file in your repository to configure the Codespace according to your project's needs.

3. Create a GitHub Actions workflow file (e.g., `.github/workflows/create-codespace.yml`) and include the necessary steps to trigger the Codespace creation.

4. Push your changes to your repository, and the Codespace will be automatically created when the specified branch is created or updated.

### Building from the Dockerfile (optional)

If you want to build the Docker image from the Dockerfile, follow these steps:

1. Clone this repository to your local machine.
2. Customize the `Dockerfile` to configure the Codespace according to your project's needs.
3. Build the Docker image using the following command:

```bash
docker build -t my-app .
```

4. Run the Docker container using the following command:

```bash
docker run -it my-app
```


## Contributing

Contributions to this project are welcome. If you have suggestions, bug reports, or want to contribute code, please follow these guidelines:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes, and ensure that your code follows best practices.
4. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this project as long as you include the appropriate attribution.
