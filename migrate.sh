#!/bin/bash
echo '' > lib/ipadict.js

cat >> lib/ipadict.js <<EOF
//  ipadict.js

//  This file creates a global IPADict object containing a public object, including the JS object of IPADict.txt.

//  In order to bypass the chrome policy, convert iPad ict.txt into iPad ict.js, and support text-to-ipa.js loading.

// Create a IPADict object only if one does not already exist. We create the
// methods in a closure to avoid creating global variables.

if (typeof IPADict !== 'object') {
  IPADict = {};
}

(function () {

  'use strict';

EOF

cat >> lib/ipadict.js <<EOF
IPADict = [
EOF

awk '{print "{word:\"" $1 "\",ipa:\"" $2 "\"},"}' lib/ipadict.txt >> lib/ipadict.js

cat >> lib/ipadict.js <<EOF
]

}());
EOF