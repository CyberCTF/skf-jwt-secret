#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) (placeholder: this lab's weakness does not read files);
# without one (CI, a run by hand) the development flag.
dev='FLAG{dev-skf-jwt-secret}'
printf '%s\n' "${CTF_FLAG_MAIN:-$dev}" > /ctf/flag
chmod 444 /ctf/flag
