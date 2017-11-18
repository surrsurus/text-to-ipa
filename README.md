# text-to-ipa ![JS Version](https://img.shields.io/badge/javascript-ES5-orange.svg) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Text to IPA converter in JavaScript

This comes with the core dictionary lookup and example frontend. This project assumes you will be running this translator in a browser of some sort. `text-to-ipa.js` contains the main logic for loading the `ipadict.txt` and looking up words, while `converter-form.js` and `example-translator.html` provide an interface.

Further reading on how this all takes place can be found inside the respective `.js` files where extensive documentation can be found.

An example you can use is in the `example-translator.html` file. Just download the repository and open up that file in a web browser.

## Getting Started

This tool implies that the CMU-IPA Dictionary _will_ be used. You can load any dictionary you want into this program, but the method to lookup words assumes it will be in the CMU format.

This was kind of a pain to get working, as most of the time was found looking for a good IPA dictionary which was ultimately found [here](http://people.umass.edu/nconstan/CMU-IPA/). This dictionary is included with this repository by default.

### Deploying

1. Include the following in the web page you want to deploy a converter to:

```html
<script src="./text-to-ipa.js"></script>
<script src="./converter-form.js"></script>
```

2. Point the TextToIPA Object to the CMU IPA Dictionary like such:

```js
window.onload = TextToIPA.loadDict('./ipadict.txt');
```

3. Set up a UI for the converter in the webpage. Here's an example:

```html
<div id="js-text-to-ipa-form">

  <ul style="list-style-type: none;">
    <li><textarea id="ipa-in" placeholder="Write text here!" rows="4" cols="50"></textarea></li>
    <li class="button"><button type="button" id="js-ipa-submit" onClick="ConverterForm.convert('ipa-in', 'ipa-out', 'ipa-err')">Convert!</button></li>
    <li><textarea readonly id="ipa-out" placeholder="aʊtpʊt gəʊz hɪə!" rows="4" cols="50"></textarea></li>
  </ul>

  <ul style="list-style-type: none;">
    <li><noscript><p>This converter will not work unless Javascript is enabled.</p></noscript></li>
    <li>
      <div id="ipa-err">
        <p>Errors will go here if you make any. (This will be overwritten!)</p>
      </div>
    </li>
  </ul>
</div>
```

See examples for more.

### Example

For a styled and better looking version instead of one that has no CSS you can test it on my website [here](http://surrsur.us/projects/ipa/english-to-ipa.html)

### Basic Usage

This converter will simply look up each word in the CMU to IPA dictionary, and pop out the resulting phonetic text.

## License

<img align="center" src="https://licensebuttons.net/l/GPL/2.0/88x62.png" alt="GPL" width=100>

This code is released under the GNU GENERAL PUBLIC LICENSE. All works in this repository are meant to be utilized under this license. You are entitled to remix, remodify, and redistribute this program as you see fit, under the condition that all derivative works must use the GPL Version 3.

## Acknowledgements

[CMU IPA Dictionary](http://people.umass.edu/nconstan/CMU-IPA/)
