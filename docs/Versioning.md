# Versioning

These dotfiles use two different versioning schemes contingent on the target audience and intended use.

## The repository: CalVer
When the target audience is human, compatibility and patch classification are discretionary. And given that there are no downstream dependencies that rely on contracts for continued integration compatibility, the repository use [CalVer](https://calver.org) to denote versions.  
It's easier for humans to track version cadence and understand the relative sequence and age of versions in relation to elapsed time.

## API: SemVer
When the audience is machines, such as those for public API endpoints, the API would be denoted using [SemVer](https://semver.org/). The circumstances are different compared to the repository at large, as these would have downstream dependencies that rely on continued integration compatibility.  
Breaking compatibility is a fallible exercise that should be discharged attentively, and thus expensively.

## Features: States
I can, at times, denote features that are in active development. This communicates the expected reliability of the functionality, both in terms of how likely it is to produce unexpected results and how likely it is to change.  
This does not indicate the availability of the feature; I try to avoid accumulating changes into larger bundles, as increasing the batch size increases the risk of failure when introducing the change.  
* `XP` (experimental): It is just as likely that this feature will be removed as it is that it will be made a permanent change. These are usually unannounced to the public.
* `EA` (early access) is a state for prototypes that are likely to stay but that are also likely to undergo changes.
* `GA` (generally available) is a state where changes are occurring less frequently. These features are considered more stable.

---

[⤶ Back to Read Me](../README.md)
