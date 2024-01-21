# File Organizer Script

This Python script is designed to organize files within a specified directory into subdirectories based on their file types. The goal is to maintain a structured and organized file system by grouping files into relevant categories.

## Usage

### Prerequisites

- Python installed on your system.
- The `os` and `shutil` modules, which are standard Python modules and do not require additional installation.

### Step 1: Import Required Modules
```python
import os, shutil
```

### Instructions

2. **Set the Path:**
   - Update the `path` variable with the path to the directory containing the files you want to organize.

    ```python
    path = r"D:/Data analysis/Datasets/New folder/"
    ```

3. **Define File Types and Folder Names:**
   - Specify the file types and corresponding folder names in the `folder_names` list.

    ```python
    folder_names = ['Documents', 'Images', 'Data']
    ```

4. **Create Destination Folders:**
   - The script checks if the destination folders (Documents, Images, Data) exist and creates them if not.

    ```python
    for x in range(0, 3):
        if not os.path.exists(path + folder_names[x]):
            os.makedirs(path + folder_names[x])
    ```

5. **Organize Files:**
   - The script iterates through the files in the specified directory, checks their file types, and moves them to the corresponding subdirectories.

    ```python
    for file in os.listdir(path):
        if (".pdf") in file and not os.path.exists(path + "Documents/" + file):
            shutil.move(path + file, path + "Documents/" + file)
        elif (".txt") in file and not os.path.exists(path + "Documents/" + file):
            shutil.move(path + file, path + "Documents/" + file)
        # ... (similar conditions for other file types)
    ```

### Example Output

- After running the script, files will be organized into subdirectories based on their types (Documents, Images, Data).

## Note

- Ensure that you review and customize the script based on your specific file types and organization preferences.

Feel free to use and modify this script to suit your needs. Happy organizing!
