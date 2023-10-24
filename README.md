# OpenRally.org
OpenRally.org - Establishing Rally Interoperability Standards For The World Ahead

Except where otherwise noted, content on this site is licensed under a Creative Commons Attribution 4.0 International license

## What is OpenRally?
OpenRally is a community standard for electronic exchange of rally information. It is owned and maintained by those who choose to collaborate.

## Release Notes:

### v1.0.2:
* Added new marker tag "show_coordinates" to indicate that GPS coordinates should be displayed to competitors

### v1.0.0:
* Separation of cross-country tags from road rally tags
* Removal of duplicate tags
* Specified sensible defaults in XSD, per FIM or other current regulations
* Inclusion of tulip and notes drawings/icons via base64 PNG or SVG

## Compatbility
These software and hardware projects currently support OpenRally format.

### Roadbook Creation Software
* Rally Navigator
* RiverNotes

### Devices
* TowerOne
* Rally Comp
* RallyBlitz
* F2R γ1000

## Collaborators
(in order of joining)
* ICO Racing
* Rally Navigator
* CoMaster
* F2R
* Rally Comp
* Amageza Rally
* Hog Wild Racing
* R3 - Roadbook Rally Raid
* Tulip
* Rally Blitz
* RiverNotes
* TerraPirata

## Mailing Lists
For the latest news and announcements, subscribe to the OpenRally.org new mailing list by sending an email to [openrallynews-request](mailto:openrallynews-request@freelists.org?subject=subscribe) with 'subscribe' in the Subject field.

## Why GPX?
GPX is the most common geo-mapping file format. Most devices which record tracks or have online maps can import/export GPX format.

GPX is also a format with many existing tools for converting.

GPX was designed with extensibility in mind.

### But GPX is XML and XML is too verbose...
It's true that XML *can* be more verbose than a binary format. However, once image data for tulips and notes fields are included, the weight of the XML text is negligible. Keep in mind, this is an *interchange* format, not the required format for storage or network transfer, which are entirely in the domain of the user. As an interchange format, ease of use is paramount.

## Implementation notes
Authors of software which are consuming OpenRally GPX files should inspect the version of the schema specified in the GPX document. Parsing should be according to the version specified. We will implement http://semver.org versioning as of v1.0.0.

## Examples
Check out cross-country/example.gpx and cross-country/openrally.xsd for the latest specification

## Testing/validation
Please test and validate using xmllint.

```
$ cd cross-country
$ ./validate.sh
openrally.xsd validates
../common/gpx-strict.xsd validates
test_wrapper.xsd validates
example.gpx validates
```

## What about road rally?
OpenRally is still in it's early stages and most adopters have been in cross-country rally. We're hopeful to add more support for road rally as interest grows. For now, cross-country users should use OpenRally v1.0.2, and road rally please see https://github.com/openrally/openrally/tree/v0.3-DRAFT. 
