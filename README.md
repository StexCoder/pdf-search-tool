

# PDF Phrase Finder

A Bash script to search for a specific word or phrase in all PDF files within a given directory.

---

## Features
- Searches through all PDF files in a directory.
- Uses `pdftotext` to extract text from PDFs for searching.
- Displays the names of PDF files where the search term is found.

---

## Requirements
Ensure you have the following installed:

1. **Bash** (default on most Unix systems).
2. **pdftotext**: A command-line tool for converting PDFs to text.
   - Install it with:
     - **Debian/Ubuntu**: `sudo apt install poppler-utils`
     - **MacOS**: `brew install poppler`
     - **Windows (via WSL)**: Install `poppler-utils` through your Linux package manager.

---

## Usage



### 1. Make the Script Executable
```bash
chmod +x search_pdf.sh
```

### 2. Run the Script
```bash
./search_pdf.sh <directory> <search_term>
```

- **`<directory>`**: Path to the directory containing PDF files.
- **`<search_term>`**: The word or phrase you want to search for.

---

## Example

To search for the term **"important phrase"** in all PDFs in the `~/Documents` folder:
```bash
./search_pdf.sh ~/Documents "important phrase"
```

### Output Example:
```
Searching for 'important phrase' in PDF files in directory: /home/user/Documents
Found in: /home/user/Documents/example1.pdf
Found in: /home/user/Documents/example2.pdf
Search completed.
```

---

## Notes
- Only `.pdf` files are searched.
- If no matches are found, the script will complete silently without listing any files.

---

## Troubleshooting
1. **`pdftotext: command not found`**
   - Ensure `pdftotext` is installed:
     - **Debian/Ubuntu**: `sudo apt install poppler-utils`
     - **MacOS**: `brew install poppler`

2. **No Results Found**
   - Verify the search term spelling and casing.
   - Check that the PDF files in the directory contain searchable text (some PDFs may store text as images).

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details. 

---

