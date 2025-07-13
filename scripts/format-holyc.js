#!/usr/bin/env node

const beautify = require('js-beautify').js;
const fs = require('fs');

// Read source code from stdin
const sourceCode = fs.readFileSync(0, 'utf-8');

// Use the same formatting options as the web editor
const options = {
    indent_size: 4,
    space_in_empty_paren: true,
    brace_style: 'expand',
    // Treat it like C-like syntax
    jslint_happy: true,
    keep_array_indentation: true,
};

// Print formatted code to stdout
process.stdout.write(beautify(sourceCode, options));
