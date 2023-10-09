# NPM Package Publisher

A GitHub action for automating publishing NPM packages.
Supports deploying packages written in:

- JavaScript
- TypeScript

## Inputs

### `access-token`

NPM access token for authenticating to npm

### `registry`

NPM registry. Defaults to 'registry.npmjs.org'

## How to use

In your GitHub actions workflow:

```yml
name: "🚀 Release"

on:
  release:
    types: [published]

jobs:
  release:
    name: 🚀 Release
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Publish
        uses: amalej/npm-publisher@v1.0.1
        with:
          access-token: ${{secrets.NPM_TOKEN}}
```
