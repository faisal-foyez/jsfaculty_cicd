# Setup Node

A reusable GitHub composite action that:

- Installs the specified Node.js version.
- Restores the npm dependency cache.
- Installs project dependencies using `npm ci`.

## Inputs

| Input | Description | Required | Default |
| ------ | ----------- | :------: | :-----: |
| `node-version` | Node.js version to install. | No | `22` |
| `cache` | Package manager cache. | No | `npm` |
| `install` | Whether to run `npm ci`. | No | `true` |

## Example

```yaml
steps:
  - uses: actions/checkout@v4

  - uses: ./.github/actions/setup-node
    with:
      node-version: "22"

  - run: npm test
  - run: npm run build
```