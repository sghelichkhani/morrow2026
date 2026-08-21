# Publishing a release to Zenodo

This repository is archived on Zenodo through Zenodo's GitHub integration:
every tagged GitHub release is deposited automatically and issued a citable
DOI. The steps below target the public home of the repository,
`https://github.com/sghelichkhani/morrow2026`.

## One-time setup

1. Sign in to <https://zenodo.org> with the GitHub account (or organisation
   account) that owns the public repository, using "Log in with GitHub", and
   grant Zenodo the permissions it asks for.
2. Open the Zenodo GitHub settings at
   <https://zenodo.org/account/settings/github/>. Zenodo lists the
   repositories you can administer. If `sghelichkhani/morrow2026` is missing,
   click **Sync now** (Zenodo only lists repositories where you hold admin
   rights).
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
2. Update `version` and `date-released` in `CITATION.cff`.
3. Tag and push the new version:

   ```bash
   git tag -a v1.0.1 -m "Morrow et al. 2026 reproducibility archive v1.0.1"
   git push origin v1.0.1
   ```

4. Create the GitHub release from that tag through the web UI
   (**Releases → Draft a new release → choose `v1.0.1` → add title and notes →
   Publish**) or with the CLI:

   ```bash
   gh release create v1.0.1 \
       --title "Morrow et al. 2026 reproducibility archive v1.0.1" \
       --notes "Available PETSc profiles and complete run records, including failed cases and reviewer solver experiments."
   ```

5. Publishing the release sends a webhook to Zenodo.
6. Open the Zenodo record and check the metadata from `.zenodo.json`.
7. If the record is a draft, publish the record after the metadata check.

Zenodo keeps the files fixed after publication. You can edit the record metadata after publication.

## DOIs and versioning

Zenodo issues two DOIs: a **concept DOI** that always resolves to the latest
version, and a **version DOI** unique to each release. Cite the concept DOI
for "the software" in general and the version DOI when you need the exact
archived snapshot. Every later release (`v1.0.1`, `v1.1.0`, …) produces a new
version DOI under the same concept DOI automatically.

## Getting the DOI into the paper

The manuscript's code- and data-availability statement currently points at
`https://github.com/g-adopt/morrow2026` and notes that it "will be made
publicly available upon publication." Since the repository lives at
`https://github.com/sghelichkhani/morrow2026`, update that URL in the paper to
match. The Zenodo concept DOI is <https://doi.org/10.5281/zenodo.21833121>.
Use this DOI for the repository in the paper.
G-ADOPT uses the concept DOI <https://doi.org/10.5281/zenodo.19688884>.

## DOI badge (optional)

The Zenodo record page provides a ready-made Markdown badge. Drop it at the
top of the repository's README, if one exists, so the archive is discoverable
straight from GitHub.
