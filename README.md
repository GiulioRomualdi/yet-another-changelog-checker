# yet-another-changelog-checker

This is a simple tool to check if the changelog file is up to date with the latest version of the project.

The code was originally taken from [`changelog-check-action`](https://github.com/tarides/changelog-check-action) and improved to support:
- Custom GitHub labels to disable the check
- The possibility to add a comment to the PR if the changelog is not up to date
  
## Setup

### Minimal Setup

The following shows an example workflow that uses the action:
```yaml
- name: Check changelog
  uses: GiulioRomualdi/yet-another-changelog-checker@v1
```

In this example, the action will check if the changelog file (named `CHANGELOG.md`) is up to date with the base branch only if `[disable changelog ci]` is not set as a label. If the changelog is not modified, a bot will print a message in the PR.

## Complete setup
The following code shows how to set up the action:
```yaml
- name: Check changelog
  uses: GiulioRomualdi/yet-another-changelog-checker@v1
    with:
      changelog: CHANGELOG.md
      disable-label: '[disable changelog ci]'
      should-add-comment: 'true'
```
