# Publishing a release to Zenodo

This repository is archived on Zenodo through Zenodo's GitHub integration:
every tagged GitHub release is deposited automatically and issued a citable
DOI. The steps below target the intended public home of the repository,
`https://github.com/g-adopt/morrow2026`.

> **Note on the current remote.** The repository presently lives at
> `github.com:sghelichkhani/morrow2026`. Move (or mirror) it to the
> `g-adopt` organisation before enabling the Zenodo hook, so the archived
> record and the URL cited in the paper's code-availability statement
> agree. The Zenodo switch is per-repository, so enable it on whichever
> account actually hosts the public copy.

## One-time setup

1. Sign in to <https://zenodo.org> with the GitHub account (or organisation
   account) that owns the public repository, using "Log in with GitHub", and
   grant Zenodo the permissions it asks for.
2. Open the Zenodo GitHub settings at
   <https://zenodo.org/account/settings/github/>. Zenodo lists the
   repositories you can administer. If `g-adopt/morrow2026` is missing, click
   **Sync now**; organisation-owned repositories only appear once the org has
   approved the Zenodo OAuth application and you hold admin rights on the repo.
3. Flip the toggle next to the repository to **ON**. From this point every new
   release is archived automatically. Releases made *before* the switch was
   enabled are not captured, so turn it on before cutting the release you want
   archived.

## Metadata

Two files in the repository root feed the record and keep the citation
consistent:

- `.zenodo.json` — read by Zenodo at deposit time to pre-fill the record
  (title, authors, affiliations, license, keywords, description). Without it,
  Zenodo falls back to the repository description and the release author alone.
- `CITATION.cff` — drives GitHub's "Cite this repository" widget and is the
  human-readable copy of the same metadata.

Keep the two in sync. Before the first release:

- Add each author's ORCID in both files (left blank for now — search the
  ORCID registry and paste the `https://orcid.org/...` URL).
- Once the journal assigns the article DOI, add it to `.zenodo.json` as a
  related identifier with relation `isSupplementTo`, and set
  `preferred-citation.doi` in `CITATION.cff`, so the software record and the
  paper cross-link both ways.
- Zenodo migrated to InvenioRDM; the license field uses the lowercase SPDX id
  (`"mit"`). If the deposit rejects it, set the license by hand in the Zenodo
  edit form instead.

## Cutting a release

1. Make sure the working tree is clean and `main` is pushed.
2. Tag and push:

   ```bash
   git tag -a v1.0.0 -m "Morrow et al. 2026 reproducibility archive"
   git push origin v1.0.0
   ```

3. Create the GitHub release from that tag — either through the web UI
   (**Releases → Draft a new release → choose `v1.0.0` → add title and notes →
   Publish**) or with the CLI:

   ```bash
   gh release create v1.0.0 --title "Morrow et al. 2026 reproducibility archive" \
       --notes "Scripts, presets, parsed records and plotting routines backing the paper."
   ```

4. Publishing the release fires the Zenodo webhook. Within a minute or two a
   new entry with a DOI badge appears next to the repository on the Zenodo
   GitHub settings page.
5. Open the deposit on Zenodo, confirm the metadata pulled from `.zenodo.json`,
   fix anything that needs it, and the record publishes — the DOI is live.
   (Metadata remains editable after publication; the archived files do not.)

## DOIs and versioning

Zenodo issues two DOIs: a **concept DOI** that always resolves to the latest
version, and a **version DOI** unique to each release. Cite the concept DOI
for "the software" in general and the version DOI when you need the exact
archived snapshot. Every later release (`v1.0.1`, `v1.1.0`, …) produces a new
version DOI under the same concept DOI automatically.

## Getting the DOI into the paper

The manuscript's code- and data-availability statement currently points at
`https://github.com/g-adopt/morrow2026` and notes that it "will be made
publicly available upon publication." Once the first release is archived,
replace that with the Zenodo concept DOI
(`https://doi.org/10.5281/zenodo.XXXXXXX`), mirroring how G-ADOPT itself is
cited there (archived at <https://doi.org/10.5281/zenodo.19688884>).

## DOI badge (optional)

The Zenodo record page provides a ready-made Markdown badge. Drop it at the
top of the repository's README, if one exists, so the archive is discoverable
straight from GitHub.
