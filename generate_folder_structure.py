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
    base_path = "./lib"  # Specify the directory you want to generate structure for
    structure = "```\nlib/\n" + generate_folder_structure(base_path, 4) + "\n```\n\n(More to be added in the future)\n\n"

    with open("README.md", "r") as file:
        readme = file.readlines()

    with open("README.md", "w") as file:
        inside_structure = False
        for line in readme:
            if line.strip() == "## 📂 Folder Structure":
                inside_structure = True
                file.write(line)
                file.write("\n" + structure)
            elif inside_structure and line.strip().startswith("```"):
                inside_structure = False
            elif not inside_structure:
                file.write(line)
