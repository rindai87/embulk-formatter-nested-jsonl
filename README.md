# Nested Jsonl formatter plugin for Embulk

TODO: Write short description here and embulk-formatter-nested-jsonl.gemspec file.

## Overview

* **Plugin type**: formatter

## Configuration

- **property1**: description (string, required)
- **property2**: description (integer, default: default-value)

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: nested-jsonl
    property1: example1
    property2: example2
```


## Build

```
$ rake
```
