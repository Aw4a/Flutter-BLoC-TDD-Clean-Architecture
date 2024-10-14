import os
from typing import Dict

# Configuration Constants
INDENTATION_LEVEL = 4
READ_ME_PATH = "README.md"
DIRECTORIES = {
    "lib": "./lib",
    "test": "./test",
    "assets": "./assets"
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

    structure_lines = []
    for item in items:
        if not item.startswith("."):  # Ignore hidden files and directories
            structure_lines.append(f"{' ' * indent}├── {item}")
            full_path = os.path.join(path, item)
            if os.path.isdir(full_path):
                structure_lines.append(generate_folder_structure(full_path, indent + INDENTATION_LEVEL))
    return "\n".join(structure_lines)

def create_collapsible_section(title: str, content: str) -> str:
    """
    Creates a collapsible HTML section for GitHub README.

    Args:
        title (str): The title of the collapsible section.
        content (str): The content inside the collapsible section.

    Returns:
        str: A formatted string with HTML <details> and <summary> tags.
    """
    return f"""
<details>
  <summary>{title}</summary>

  {content}

</details>
"""

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

    # Check for the existence of start and end markers
    start_marker = "<!-- FOLDER_STRUCTURE_START -->"
    end_marker = "<!-- FOLDER_STRUCTURE_END -->"

    start_index, end_index = None, None
    for index, line in enumerate(lines):
        if start_marker in line.strip():  # Use strip() to ignore leading/trailing whitespace
            start_index = index
        elif end_marker in line.strip():
            end_index = index

    if start_index is None or end_index is None or start_index >= end_index:
        print(f"Error: Markers '{start_marker}' and '{end_marker}' not found or incorrectly placed in README.md.")
        return

    # Replace the content between the markers, keeping the markers themselves intact
    updated_lines = (
        lines[:start_index + 1]
        + ["\n", structure, "\n"]
        + lines[end_index:]
    )

    with open(readme_path, "w", encoding="utf-8") as file:
        file.writelines(updated_lines)
    print("README.md has been successfully updated with the latest folder structure.")

if __name__ == "__main__":
    # Generate folder structure for each specified directory
    folder_structure_parts = []
    for dir_name, dir_path in DIRECTORIES.items():
        if os.path.exists(dir_path):
            folder_structure = generate_folder_structure(dir_path, INDENTATION_LEVEL)
            folder_structure_parts.append(create_collapsible_section(f"Click to expand/collapse {dir_name} folder structure", f"```\n{dir_name}/\n{folder_structure}\n```"))
        else:
            folder_structure_parts.append(create_collapsible_section(f"Click to expand/collapse {dir_name} folder structure", f"```\n{dir_name}/\n# Directory not found\n```"))

    # Combine all folder structures
    folder_structure_combined = "\n\n".join(folder_structure_parts)
    folder_structure_combined += "\n\n(More to be added in the future)\n"

    # Update the README.md file with the generated structure
    update_readme_with_structure(READ_ME_PATH, folder_structure_combined)
