# OpenRally.org
OpenRally.org - Establishing Rally Interoperability Standards For The World Ahead

Except where otherwise noted, content on this site is licensed under a Creative Commons Attribution 4.0 International license

## Projects
* OpenRally Enhanced GPX format
* OpenRally Roadbook Exchange format

## Collaborators
* ICO Racing
* Rally Navigator
* CoMaster
* F2R
* RallyComp
* Amageza Rally
* Hog Wild Racing
* R3 - Roadbook Rally Raid
* Tulip
* Rally Blitz

## Mailing Lists
For the latest news and announcements, subscribe to the OpenRally.org new mailing list by sending an email to [openrallynews-request](mailto:openrallynews-request@freelists.org?subject=subscribe) with 'subscribe' in the Subject field.

## OpenRally Enhanced GPX Format v0.2-DRAFT
The new format exports formatted metadata about the route so that other applications can interpret the data directly, without elaborate string parsing. Standard GPX fields are not modified for computer consumption. The format has full support for WPM, WPE, WPS, DZ, FZ, neutralizations, ASS, DSS, Stops, Checkpoints and more. 

##What's new in version 0.2-DRAFT:
* units specified in metadata extension (required)
* total distance specified in metadata extension (optional)
* waypoint distance added (optional)
* many additional tags for cross-country and road/stage rallies (thanks Rally Navigator)

##Check out example.gpx and openrally.xsd

##Testing/validation
We test and validate using test.sh, which is just a wrapper around xmllint.

$ ./test.sh 
example.gpx validates

