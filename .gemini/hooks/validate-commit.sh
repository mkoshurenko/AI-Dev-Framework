#!/bin/bash
# Validate git commit has ticket ID per TICKETING.md
#
# This hook intercepts git commit commands and ensures they contain
# a valid ticket ID, enforcing "Rule Zero: No ticket = no work"

input=$(cat)
command=$(echo "$input" | jq -r '.tool_input.command // ""')

# Only check git commit commands
if [[ ! "$command" =~ ^git\ commit ]]; then
  exit 0
fi

# Valid ticket patterns from docs/TICKETING.md:
# [PLATFORM-TYPE-NNN] - e.g., [BEND-TASK-001], [ADA-BUG-003]
# [TYPE-NNN] - e.g., [EPIC-001], [STORY-005]
# #N - GitHub issue reference

PLATFORM_PATTERN='\[(BEND|ADA|IOS|WEB|DSK|SHR|CV|IOT|INF)-(EPIC|STORY|TASK|BUG)-[0-9]+\]'
TYPE_PATTERN='\[(EPIC|STORY|TASK|BUG)-[0-9]+\]'
GITHUB_PATTERN='#[0-9]+'

if [[ "$command" =~ $PLATFORM_PATTERN ]] || \
   [[ "$command" =~ $TYPE_PATTERN ]] || \
   [[ "$command" =~ $GITHUB_PATTERN ]]; then
  exit 0  # Allow - valid ticket ID found
fi

# Block commit without ticket ID
echo "COMMIT BLOCKED: No ticket ID found!" >&2
echo "" >&2
echo "Rule Zero: No ticket = no work" >&2
echo "" >&2
echo "Valid formats (see docs/TICKETING.md):" >&2
echo "  [BEND-TASK-001] Backend task" >&2
echo "  [ADA-BUG-003]   Android bug" >&2
echo "  [EPIC-001]      Epic (no platform)" >&2
echo "  [STORY-005]     Story (no platform)" >&2
echo "  #32             GitHub issue reference" >&2
echo "" >&2
echo "Ask user for ticket ID or create one first." >&2
exit 2  # Block
