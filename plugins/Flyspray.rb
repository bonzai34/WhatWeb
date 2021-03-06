##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Flyspray" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-04-17
version "0.1"
description "Open source, web based bug tracking system written with a focus on ease-of-use. - Homepage: http://flyspray.org/"

# Google results as at 2011-04-17 #
# 381 for "Powered by Flyspray"

# Dorks #
dorks [
'"Powered by Flyspray"'
]

# Examples #
examples %w|
bugs.archlinuxppc.org
war3source.com/bugs/
www.vixn.org/bugs/
pmlivestaging.com
bugs.waysoflife.be
bugtracker.goggosoft.de
www.observium.org/bugs/
bugs.archlinux.fr
dev.oscss.org
opensource.dyc.edu/flyspray/
|

# Matches #
matches [

# HTML Comment
{ :text=>"<!-- Please don't remove this line - it helps promote Flyspray -->" },

# Powered by link
{ :text=>'<a href="http://flyspray.org/" class="offsite">Powered by Flyspray</a>' },

]

end


