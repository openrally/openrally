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

## OpenRally Enhanced GPX Format v0.1-DRAFT
The new format exports formatted metadata about the route so that other applications can interpret the data directly, without elaborate string parsing. Standard GPX fields are not modified for computer consumption. The format has full support for WPM, WPE, WPS, DZ, FZ, neutralizations, ASS, DSS, Stops, Checkpoints and more. 

```xml
<?xml version='1.0' encoding='UTF-8' standalone='no' ?>
<gpx xmlns="http://www.topografix.com/GPX/1/1" xmlns:openrally="http://www.openrally.org/xmlschemas/GpxExtensions/v0.1" ... >
...
<wpt ...>
	<extensions>
		<openrally:wpe/>
		<openrally:dss/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:dz/>
		<openrally:speed kph="65"/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:speed kph="110"/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:fz/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:wpm open='800' clear='20'/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:wps open='800' clear='20'/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:stop/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:checkpoint/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:neutralization/>
	</extensions>
</wpt>

<wpt ...>
	<extensions>
		<openrally:ass/>
	</extensions>
</wpt>
</gpx>
```