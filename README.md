cs2cs for Matlab
================

This is a wrapper-function to call 
[cs2cs](http://proj.maptools.org/man_cs2cs.html) from 
[GNU Octave](https://www.gnu.org/software/octave/) or 
[Mathworks Matlab](http://www.mathworks.com/products/matlab/).


Summary:
--------
Cs2cs performs transformation between the source and destination cartographic 
coordinate system on a set of input points. The coordinate system 
transformation can include translation between projected and geographic 
coordinates as well as the application of datum shifts.


Background:
-----------
Arguments are passed to the binary using temporary files. This may be slow 
for too many calls. 


Dependencies:
-------------
Linux:
Please install the package proj-bin which contains cs2cs:
<pre>
aptitude install proj-bin
</pre>

Windows:
The binaries of cs2cs are shipped with this release.


LICENSE
-------
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by 
the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see [gpl](www.gnu.org/licenses/).


CONTACT
-------
Please use the contact-form provided by github.
