# Project Agent Instructions

Use this file as a project-specific instruction file for AI coding agents.

## Project summary

Describe the project purpose, users, business domain, and important modules.

## Tech stack

- Backend:
- Frontend:
- Database:
- Cache/queue:
- Package manager:
- Test framework:
- Build command:
- Deployment:

## Source of truth

Project-specific instructions in this repository override any global or universal skills.

## Development rules

- Follow existing architecture and naming conventions.
- Make minimal, focused changes.
- Do not rewrite unrelated files.
- Do not introduce new dependencies without approval.
- Do not change database schema without migration and explanation.
- Do not hardcode secrets or credentials.
- Add or update tests when behavior changes.

## Validation commands

List commands that should be run after changes.

```bash
# Example
# npm test
# npm run build
# php artisan test
# pytest
```

## Risk areas

Document modules or files that require extra care.

## PR checklist

- Summary of changes
- Tests run
- Screenshots if UI changed
- Migration notes if database changed
- Rollback notes if needed
