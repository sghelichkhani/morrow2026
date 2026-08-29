"""Deterministic figure output.

Matplotlib stamps a creation timestamp into every PDF it writes, so
regenerating an unchanged figure produces a file that differs from the one in
git. Two of the four "changed" figures in the working tree on 2026-08-29 were
byte-identical to their committed versions once the timestamps were stripped,
which is noise that hides the one figure that really did change.

`save` writes the timestamp fields empty instead. A reader who regenerates the
figures from the parsed record then gets an empty diff if nothing moved, which
is what makes the code-availability statement checkable rather than merely
true.

Use it in place of `fig.savefig`:

    from figstyle import save
    save(fig, out, pad_inches=0.2)
"""

# PDF and PNG take different metadata keys for the same thing. Setting a key
# to None omits it; the PNG writer wants an empty string.
_PDF_METADATA = {"CreationDate": None, "Producer": None, "Creator": None}
_PNG_METADATA = {"Software": ""}


def save(fig, path, pad_inches=None, bbox_inches="tight", **kwargs):
    """Write a figure with no embedded timestamp."""
    path = str(path)
    if path.endswith(".png"):
        metadata = dict(_PNG_METADATA)
    else:
        metadata = dict(_PDF_METADATA)
    metadata.update(kwargs.pop("metadata", None) or {})
    if pad_inches is not None:
        kwargs["pad_inches"] = pad_inches
    fig.savefig(path, bbox_inches=bbox_inches, metadata=metadata, **kwargs)
