# chordsequence

Chord Sequence is a simple editor for editing guitar songs in the ChordPro format.  It's useful when the online version of a song isn't quite the way you like to play it.

![Alt text](/doc/main-page.png "Chord Sequence Main Page")


It's organized into two services, a frontend node.js service (chordsequence), and a backend tomcat service (chordsequence-platform).  The node.js service is fairly new, most UI is still in the tomcat service but will be migrated over time to node.js.  It uses docker-deployer to auto deploy new frontend builds when they are available:

![Alt text](/doc/architecture.png "Chord Sequence Architecture")

