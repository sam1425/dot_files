#!/usr/bin/env python3
import i3ipc

# Roman numerals with spacing to match your config style
ROMAN_NUMERALS_SPACED = [
    " I ",
    "I I",
    "III",
    "I V",
    " V ",
    "V I",
    "VII",
    "VIII",
    "IX",
    " X "
]

def to_roman_spaced(n: int) -> str:
    """Return spaced Roman numerals according to your style."""
    if 1 <= n <= len(ROMAN_NUMERALS_SPACED):
        return ROMAN_NUMERALS_SPACED[n - 1]
    return f" {n} "  # fallback with spacing if you go past X

def renumber_workspaces(i3):
    workspaces = sorted(i3.get_workspaces(), key=lambda ws: ws.num)

    for i, ws in enumerate(workspaces, start=1):
        expected_name = to_roman_spaced(i)
        if ws.name != expected_name:
            print(f"Renaming workspace {ws.name} → {expected_name}")
            i3.command(f'rename workspace "{ws.name}" to "{expected_name}"')

def cleanup_empty_workspaces(i3):
    """Remove extra empty workspaces beyond the last one that has windows."""
    tree = i3.get_tree()
    workspaces = sorted(tree.workspaces(), key=lambda ws: ws.num)

    last_used = 0
    for i, ws in enumerate(workspaces, start=1):
        if ws.leaves:
            last_used = i

    for ws in workspaces[last_used:]:
        print(f"Removing empty workspace {ws.name}")
        i3.command(f'remove workspace "{ws.name}"')

def enforce_order(i3, _):
    renumber_workspaces(i3)
    cleanup_empty_workspaces(i3)

if __name__ == "__main__":
    i3 = i3ipc.Connection()
    print("Dynamic Roman workspace manager (spaced) started")

    # Enforce order on startup
    enforce_order(i3, None)

    # Keep enforcing order dynamically
    i3.on("workspace::focus", enforce_order)
    i3.on("window::close", enforce_order)
    i3.on("window::new", enforce_order)
    i3.on("workspace::init", enforce_order)
    i3.on("workspace::empty", enforce_order)

    i3.main()

