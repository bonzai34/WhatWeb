##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Purveyor-Encrypt-WebServer" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-05-21
version "0.1"
description "Purveyor Encrypt WebServer for OpenVMS combines the reliability, security and scalability of the OpenVMS platform with the graphical ease-of-use and functionality of World Wide Web technologies. OpenVMS (Open Virtual Memory System), previously known as VAX-11/VMS, VAX/VMS or (informally) VMS, is a high-end computer server operating system that runs on VAX, Alpha and Itanium-based families of computers. - More info: http://www.sss.co.nz/software/purveyor/purvpage.htm"
# More info:
# http://www.openvms.org/
# http://alpha.mike-r.com/VMS_beginners_faq.html
# http://en.wikipedia.org/wiki/OpenVMS

# ShodanHQ results as at 2011-05-21 #
# 18 for Purveyor Encrypt Domestic
# 10 for Purveyor Encrypt Export

# Examples #
examples %w|
129.43.7.102
74.218.70.8
74.218.70.7
137.125.248.2
158.165.5.23
132.170.217.131
67.53.90.98
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :os=>"OpenVMS", :version=>@headers["server"].scan(/^Purveyor Encrypt (Export|Domestic)\/v([^\s]+) OpenVMS$/)[0][1] } if @headers["server"] =~ /^Purveyor Encrypt (Export|Domestic)\/v([^\s]+) OpenVMS$/

	# Return passive matches
	m
end

end

