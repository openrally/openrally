# OpenRally.org
OpenRally.org - Establishing Rally Interoperability Standards For The World Ahead

Except where otherwise noted, content on this site is licensed under a Creative Commons Attribution 4.0 International license

## What is OpenRally?
OpenRally is a community standard for electronic exchange of rally information. It is owned and maintained by those who choose to collaborate.

## OpenRally Projects
* OpenRally Enhanced GPX format
* OpenRally Roadbook Exchange format (GPX + SVG tulips)

## Collaborators
(in order of joining)
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

## Why GPX?
GPX is the most common geo-mapping file format. Most devices which record tracks or have online maps can import/export GPX format.

GPX is also a format with many existing tools for converting.

### But GPX is XML and XML is too verbose...
It's true that XML *can* be more verbose than a binary format. However, once image data for tulips and notes fields are included, the weight of the XML text is negligible. Keep in mind, this is an *interchange* format, not the required format for storage or network transfer, which are entirely int he domain of the user. As an interchange format, ease of use is paramount.

## What's new in v1.0-Cross-Country-DRAFT:
* Separation of cross-country tags from road rally tags
* Removal of duplicate tags
* Specified sensible defaults in XSD, per FIM current regulations
* Formalization of SVG for tulip and notes drawings/icons.

### Implementation notes
Authors of software which are consuming OpenRally GPX files should inspect the version of the schema specified in the GPX document. Parsing should be according to the version specified.

## OpenRally Enhanced GPX Format v0.3-DRAFT
The new format exports formatted metadata about the route so that other applications can interpret the data directly, without elaborate string parsing. Standard GPX fields are not modified for computer consumption. The format has full support for WPM, WPE, WPS, DZ, FZ, neutralizations, ASS, DSS, Stops, Checkpoints and more.

## What's new in version 0.3-DRAFT:
* SVG tulips (including raster images)
* SVG and text notes

## What's new in version 0.2-DRAFT:
* units specified in metadata extension (required)
* total distance specified in metadata extension (optional)
* waypoint distance added (optional)
* many additional tags for cross-country and road/stage rallies (thanks Rally Navigator)

## Check out example.gpx and openrally.xsd for the latest specification

## Testing/validation
We test and validate using xmllint.

```
$ cd cross-country
$ ./validate_schemas.sh
openrally.xsd validates
../external/gpx.xsd validates
$ ./validate_example.sh
example.gpx validates
```
