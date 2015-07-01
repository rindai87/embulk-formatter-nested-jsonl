# Nested Jsonl formatter plugin for Embulk

TODO: Write short description here and embulk-formatter-nested-jsonl.gemspec file.

## Overview

* **Plugin type**: formatter

## Configuration

- **encoding**: output encoding (string, default: 'UTF-8')
- **newline**: output newline character (string, default: 'LF')

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: nested-jsonl
    encoding: UTF-8
    newline: CRLF
```


## Build

```
$ rake
```
