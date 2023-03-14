# Generate C4 Model

This action takes your [C4 model](https://c4model.com) system architecture in [Structurizr DSL](https://github.com/structurizr/dsl) format, generates [PlantUML](https://plantuml.com/) .png images and optionally export to [another format](https://github.com/structurizr/cli/blob/v1.28.0/docs/export.md).

## Inputs

### `source-path`

**Required** The path to the Structurizr DSL file.

### `target-path`

**Required** The path to the directory in which to place the C4 model artifacts. Default `.github/actions/dist`

### `export-model-to-format`

Export structirizr model into [another format](https://github.com/structurizr/cli/blob/v1.28.0/docs/export.md). Default `none`

## Example usage

```
- name: Generate C4 Model
  uses:  university-of-york/generate-c4-model-action@1.0.0
  with:
    source-path: docs/c4-model.dsl
    target-path: .github/actions/dist/images/c4
    export-model-to-format: dot
```

## Mentions

Thanks to [Structurizr Limited](https://structurizr.com/) for the [Structurizr DSL](https://github.com/structurizr/dsl) and [Structurizr CLI](https://github.com/structurizr/cli).

## Licence

The scripts and documentation in this project are released under the MIT License
