#!/bin/bash

# A script to compile a LaTeX document with XeLaTeX and BibTeX

# Remove auxiliary files created from previous compilations (for a clean build)
# This includes .aux, .log, .toc, and other files.
echo "Removing auxiliary files from previous compilations..."
rm -f *.aux *.log *.toc *.lol *.lof *.lot *.out *.bbl *.blg

# Step 1: First compilation to generate .aux and .toc files
echo "Compiling XeLaTeX for the 1st time..."
xelatex main.tex

# Step 2: Run BibTeX to process the bibliography
echo "Processing bibliography with BibTeX..."
bibtex main

# Step 3: Second compilation to make the bibliography appear in the document
echo "Compiling XeLaTeX for the 2nd time..."
xelatex main.tex

# Step 4: Final compilation to ensure the table of contents and all links are correct
echo "Compiling XeLaTeX for the 3rd time..."
xelatex main.tex

echo "Compilation is complete. The PDF file named main.pdf is now available."