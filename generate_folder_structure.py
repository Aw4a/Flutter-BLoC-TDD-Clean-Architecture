import os

def generate_folder_structure(path, indent=0):
    items = os.listdir(path)
    items.sort()
    structure = ""
    for item in items:
        if not item.startswith("."):  # Ignore hidden files and directories
            structure += " " * indent + f"├── {item}\n"
            full_path = os.path.join(path, item)
            if os.path.isdir(full_path):
                structure += generate_folder_structure(full_path, indent + 4)
    return structure

if __name__ == "__main__":
    # Generate folder structure for lib directory
    lib_base_path = "./lib"
    lib_structure = "```\nlib/\n" + generate_folder_structure(lib_base_path, 4) + "\n```"

    # Generate folder structure for test directory
    test_base_path = "./test"
    test_structure = "```\ntest/\n" + generate_folder_structure(test_base_path, 4) + "\n```"

    folder_structure = lib_structure + "\n\n" + test_structure + "\n\n(More to be added in the future)\n\n"

    with open("README.md", "r", encoding="utf-8") as file:
        readme = file.readlines()

    with open("README.md", "w", encoding="utf-8") as file:
        inside_structure = False
        for line in readme:
            if line.strip() == "## 📂 Folder Structure":
                inside_structure = True
                file.write(line)
                file.write("\n" + folder_structure)
            elif inside_structure and line.strip().startswith("```"):
                inside_structure = False
            elif not inside_structure:
                file.write(line)
