# chordsequence

Chord Sequence is a simple editor for editing guitar songs in the ChordPro format.  It's useful when the online version of a song isn't quite the way you like to play it.

![Alt text](/doc/main-page.png "Chord Sequence Main Page")


It's organized into two services a frontend node.js service (chordsequence) and a backend tomcat service (chordsequence-platform).  It uses docker-deployer to auto deploy new frontend builds when they are available:

![Alt text](/doc/architecture.png "Chord Sequence Architecture")

