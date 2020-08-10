## Test environments

- local R installation, R 4.0.2
- ubuntu 16.04 (on github-actions), R 4.0.2
- win-builder (devel)

## R CMD check results

0 errors | 0 warnings | 1 note

- This is a new release.
- This is a resubmit to address the following comments:

> Found the following (possibly) invalid URLs:
>      URL: http://openpsychometrics.org/_rawdata/TMA.zip (moved to
> https://openpsychometrics.org/_rawdata/TMA.zip)
>        From: man/items_taylor_manifest_anxiety_scale.Rd
>              README.md
>        Status: 200
> .... 

We have switched all `http://` URLs to use `https://` and verified no
more invalid URLs are present.

> Possibly mis-spelled words in DESCRIPTION:
>   Balamuta (27:25)
>   Culpepper (23:15, 24:5, 25:5, 26:5, 27:5, 28:9)
>   Liang (23:35)

The other note is related to author lastname misspellings:
