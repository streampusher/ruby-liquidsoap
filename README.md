# ruby-liquidsoap

http://github.com/datafruits/ruby-liquidsoap

## DESCRIPTION:

a ruby library for sending commands to liquidsoap via its telnet or socket 
interface.


## FEATURES/PROBLEMS:

* connect to a liquidsoap's telnet or socket interface for sending commands

* also interact with the harbor's http interface

* doesn't have a very cool name

* tests connect to a live liquidsoap instance. hope to replace with vcr or
  something soon.

## SYNOPSIS:

``` ruby
require 'liquidsoap'

l = Liquidsoap::Socket.new("/path/to/socket")
l.send("update title=dudethatbe,artist=datafruits")
metadata = l.send("icecast.metadata")

l = Liquidsoap::Telnet.new("localhost") # default port is 1234
l.send("update title=dudethatbe,artist=datafruits")
metadata = l.send("icecast.metadata")
```

## REQUIREMENTS:

a liquidsoap server

## INSTALL:

gem install ruby-liquidsoap

## DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

## LICENSE:

(The MIT License)

Copyright (c) 2013 Tony Miller

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
