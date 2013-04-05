cs2cs for Matlab
================

This is a wrapper-function to call 
[cs2cs](http://proj.maptools.org/man_cs2cs.html) from 
[GNU Octave](https://www.gnu.org/software/octave/) or 
[Mathworks Matlab](http://www.mathworks.com/products/matlab/).


Summary
-------
Cs2cs performs transformation between the source and destination cartographic 
coordinate system on a set of input points. The coordinate system 
transformation can include translation between projected and geographic 
coordinates as well as the application of datum shifts.


Background
----------
Arguments are passed to the binary using temporary files. This may be slow 
for too many calls. 


Dependencies
------------
Linux:
Please install the package proj-bin which contains cs2cs:
<pre>
aptitude install proj-bin
</pre>

Windows:
The binaries of cs2cs are shipped with this release.


License
-------
Copyright (c) 2013 Erwin Nindl

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Contact
-------
Please use the contact-form provided by github.
