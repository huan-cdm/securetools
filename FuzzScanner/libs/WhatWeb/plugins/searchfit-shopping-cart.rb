##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##

# Version 0.2
# removed :certainty=>100 & :name
# Version 0.3
# Uses :version=>//

Plugin.define "SearchFitShoppingCart" do
author "Andrew Horton"
version "0.3"
description "Commercial ecommerce system written in PHP"
website "http://www.searchfit.com/shopping-cart-features.htm"


# pretty basic plugin, only 1 example to work from

#<META NAME="GENERATION-COPYRIGHT" CONTENT="This Website is generated by SearchFit Shopping Cart v8.11 and is protected by the law against reproducing or copying without a license.">
#<a class="footer_link_system" target="_blank" style="font-size: 10px;" href="http://www.searchfit.com/enterprise-shopping-cart-software.htm" title="Shopping Cart Software SearchFit v8.11">Shopping Cart Software SearchFit v8.11</a>
# js   new SearchFitAnalytics("

matches [
{:text=>"This Website is generated by SearchFit Shopping Cart"},
{:text=>'<a class="footer_link_system" target="_blank" style="font-size: 10px;" href="http://www.searchfit.com/'},
{:text=>'new SearchFitAnalytics("'},
{:version=>/This Website is generated by SearchFit Shopping Cart v([^ ]+)/,  :name=>"version" } 
]


end

