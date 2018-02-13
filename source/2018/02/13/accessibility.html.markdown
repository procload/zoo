---
title: Accessibility Basics for Developers
date: 2018-02-13 12:00 UTC
tags: accessibility, work, 8451, working
---
It's common to think that web accessibility only applies to screen readers and blind users, but the reality is much larger and more nuanced. With close to 25 percent of adults in the United States having some sort of disability, it's something too valuable to ignore. Breaking down accessibility into physical and environmental impairments can help us emphasize with our users' diverse abilities.

We can separate physical disabilities into four buckets: vision, auditory, cognitive, and motor. These exist on a spectrum. A vision impairment could be something rudimentary such as having one's pupils dilated or as severe as a complete loss of eyesight. Whereas a motor impairment could be a broken arm or something more serious such as complete paralysis.

We also need to keep in mind environmental factors. Users might be accessing the site in bright sunlight, watching a video in a loud or quiet environment, or visiting a site on low bandwidth. Developing with accessibility in mind also boosts the experience for everyone by ensuring there is more thought put into usability, simpler UI interactions, and enhanced features such as keyboard navigation.

There are some quick and easy things developers and designers can do to improve accessibility. Using [proper alt text on image tags](https://webaim.org/techniques/alttext/), [providing a skip navigation link](https://webaim.org/techniques/skipnav/), [designing with a correct contrast ratio](https://webaim.org/resources/contrastchecker/), and [writing semantic markup](https://dequeuniversity.com/assets/html/jquery-summit/html5/slides/landmarks.html) are all low hanging fruit waiting to be tackled. Occam and Canon are supporting WCAG Level A accessibility standards, but are striving for AA to reach the greatest number of users. A human-readable checklist for each level can be found [here](https://wuhcag.com/wcag-checklist/).

There are tools available to help test a site's accessibility:

* [Wave is a Chrome extension](https://chrome.google.com/webstore/detail/wave-evaluation-tool/jbbplnpkjmmeebjpijfedlgcdilocofh?hl=en-US) that will evaluate web accessibility of your site within the browser
* VoiceOver for Mac (FN+CMD+F5) is a built-in screen reader
* [Contrast Ratio Checker](https://leaverou.github.io/contrast-ratio/) will tell you the contrast between 2 color hex values to ensure they meet requirements