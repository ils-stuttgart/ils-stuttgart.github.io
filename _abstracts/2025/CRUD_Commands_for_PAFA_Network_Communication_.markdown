---
title: "CRUD Commands for PAFA Network Communication"
layout: page
author: "Jens-Peter Kühn"
---
Currently available avionics systems for modern aircraft rely on a large number of configuration
parameters to define system functionalities. These configuration parameters are defined during
development and are statically defined to guarantee deterministic system behavior. However, this
means that no reconfiguration, e.g., for different flight phases, is possible. As a result, every process,
message, etc. requires reserved computation and communication slots, even if it is rarely used or
inactive in certain flight phases. This leads to significant overhead in the usage of network and
computer resources, as well as redundancy. In addition, the sheer number of configuration parameters
significantly increases the effort required for development and revision, leading to long development
cycles and high costs.

One possible solution to this challenge is the plug-and-fly avionics platform (PAFA), developed by the
Institute of Aircraft Systems (ILS) at the University of Stuttgart. This project demonstrates a concept
for a reconfigurable platform for avionics systems, featuring automatic configuration and self-
adaptation to different flight phases and failure conditions. To achieve this, the PAFA concept utilizes
device detection and self-explanation features, a task allocation mechanism with a check that ensures
a certain calculated configuration is valid and safe, and a data storage system called Consciousness.
For device detection and self-explanation, PAFA devices send advertisement messages cyclically. After
a request from the topology discovery mechanism, they also send a self-description containing all their
capabilities, as well as input and output signals. The current implementation of this advertisement and
self-description mechanism relies on a custom PAFA network protocol and a generic (de-)serializer.
However, despite its functionality in the PAFA demonstrator, the self-description does not contain all
the necessary information for projects relying on the PAFA platform (e.g., DaKliF, HyGo BW, etc.). Thus,
the PAFA protocol requires extension. Nevertheless, this extension can only address the known
requirements of currently active projects, while future needs of new projects would necessitate further
changes to the protocol.

This work presents a novel approach for PAFA network communication that overcomes these
limitations. It employs CRUD commands (CREATE, READ, UPDATE, DELETE) for all data transfers
between PAFA devices and the storage in Consciousness – referred to as EOQ CRUD commands for
differentiation purposes. Every information transfer is represented by a sequence of only four EOQ
CRUD command types.

The benefits of limiting communication to these four command types make PAFA communication more
flexible, as they are not limited to the datasets currently needed in the PAFA protocol. In fact, the
completeness of the CRUD commands has already been demonstrated through their internal usage
within Consciousness to access its internal database. Currently, all transferred data is converted to
CRUD commands inside Consciousness, and EOQ CRUD commands build upon this existing concept.

This new concept also renders the previously required generic (de-)serializer obsolete. This means that
neither PAFA devices nor the topology discovery mechanism have to serialize the internally available
information. Instead, the EOQ CRUD commands can be predefined and stored in simple lists. This work
presents different communication sequences, the required EOQ CRUD commands, and compares them
to the existing mechanism.

However, the presented concept also creates multiple challenges. Without additional evaluation layers
and checking mechanisms, it would allow for multiple thread scenarios and safety issues. Thus, a new
Consciousness API layer is introduced, and its required features are discussed. Nevertheless, some
open points remain to be evaluated and designed for this concept. This work presents the current state
of the concept and yet unsolved challenges.