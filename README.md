# Modern ROS2 Workspace Template

This repository provides a modern template for ROS2 Humble development using [Pixi](https://pixi.sh/) for environment management and [UV](https://docs.astral.sh/uv/) for Python package management.

## Features
- **Pixi**: Manages ROS2 Humble, system dependencies, and Python version.
- **UV**: Fast Python package management within the Pixi-provided environment.
- **Direnv**: Automatic activation of both Pixi and UV environments.
- **Pre-configured**: Includes a starter ROS2 package and common tasks.

## Prerequisites
- Install [Pixi](https://pixi.sh/latest/#installation)
- Install [UV](https://docs.astral.sh/uv/getting-started/installation/)
- (Optional) Install [Direnv](https://direnv.net/) for automatic environment activation.

## Getting Started

### 1. Initialize the Environment
Run the setup script to install all dependencies and create the Python virtual environment:
```bash
pixi run setup
```
This script will:
1. Install ROS2 and other dependencies via Pixi.
2. Create a UV virtual environment using Pixi's Python.
3. Sync Python dependencies.

### 2. Activate the Environment
If you have `direnv` installed:
```bash
direnv allow
```
Otherwise, source the `.envrc` manually:
```bash
source .envrc
```

### 3. Build the Workspace
Build the included starter package:
```bash
pixi run build
```

### 4. Run the Starter Node
```bash
# Source the install directory (if not using direnv)
source install/setup.bash

# Run the node
ros2 run starter_package hello_node
```

## Adding Dependencies
- **System/ROS packages**: Use `pixi add <package_name>`
- **Python packages**: Use `uv add <package_name>`

## Project Structure
- `src/`: ROS2 packages.
- `scripts/`: Useful scripts (setup, etc.).
- `pixi.toml`: Pixi configuration and tasks.
- `pyproject.toml`: UV/Python configuration.
- `.envrc`: Environment activation script.
