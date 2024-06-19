#!/bin/bash
set -uo pipefail

CHANGELOG_FILE="${1:-CHANGELOG.md}"

if [ "${NO_CHANGELOG_LABEL}" = "true" ]; then
    # no changelog check is required
    exit 0
else
    # check if the changelog has been updated if not then fail and provide a message
    if git diff --exit-code "origin/${BASE_REF}" -- "${CHANGELOG_FILE}"; then
        >&2 echo "Changelog has not been updated. Please update the changelog. If you do not want to update the changelog, set the NO_CHANGELOG_LABEL environment variable to true."
        exit 1
    fi
fi
