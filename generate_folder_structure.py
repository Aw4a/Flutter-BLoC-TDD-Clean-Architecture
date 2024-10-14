import os
from typing import Dict

# Configuration Constants
INDENTATION_LEVEL = 4
READ_ME_PATH = "README.md"
DIRECTORIES = {
    "lib": "./lib",
    "test": "./test",
    "assets": "./assets",
}

def generate_folder_structure(path: str, indent: int = 0) -> str:
    """
    Recursively generates a folder structure as a formatted string.

    Args:
        path (str): The path to the directory.
        indent (int): The indentation level for the folder items.

    Returns:
        str: A formatted string representing the folder structure.
    """
    try:
        items = sorted(os.listdir(path))
    except FileNotFoundError:
        return f"{' ' * indent}# Directory not found: {path}\n"

    structure = ""
    for item in items:
        if not item.startswith("."):  # Ignore hidden files and directories
            structure += f"{' ' * indent}├── {item}\n"
            full_path = os.path.join(path, item)
            if os.path.isdir(full_path):
                structure += generate_folder_structure(full_path, indent + INDENTATION_LEVEL)
    return structure

def update_readme_with_structure(readme_path: str, structure: str) -> None:
    """
    Updates the README file with the generated folder structure.

    Args:
        readme_path (str): The path to the README.md file.
        structure (str): The folder structure to be inserted into the README.
    """
    try:
        with open(readme_path, "r", encoding="utf-8") as file:
            lines = file.readlines()
    except FileNotFoundError:
        print(f"Error: README file '{readme_path}' not found.")
        return

    updated_lines = []
    inside_structure = False
    for line in lines:
        if line.strip() == "## 📂 Folder Structure":
            inside_structure = True
            updated_lines.append(line)
            updated_lines.append(
                """
<details>
  <summary>Click to expand/collapse the folder structure</summary>

"""
            )
            updated_lines.append("\n" + structure + "\n")
            updated_lines.append("</details>\n")
        elif inside_structure and line.strip().startswith("```"):
            inside_structure = False
        elif not inside_structure:
            updated_lines.append(line)

    with open(readme_path, "w", encoding="utf-8") as file:
        file.writelines(updated_lines)

if __name__ == "__main__":
    # Generate folder structure for each specified directory
    folder_structure_parts = []
    for dir_name, dir_path in DIRECTORIES.items():
        if os.path.exists(dir_path):
            folder_structure_parts.append(f"```\n{dir_name}/\n{generate_folder_structure(dir_path, INDENTATION_LEVEL)}```\n")
        else:
            folder_structure_parts.append(f"```\n{dir_name}/\n# Directory not found\n```\n")

    # Combine the folder structures
    folder_structure = "\n".join(folder_structure_parts)
    folder_structure += "(More to be added in the future)\n\n"

    # Update the README.md file with the generated structure
    update_readme_with_structure(READ_ME_PATH, folder_structure)
