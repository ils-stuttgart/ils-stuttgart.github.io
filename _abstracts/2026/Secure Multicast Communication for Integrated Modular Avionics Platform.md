---
title: "Secure Multicast Communication for Integrated Modular Avionics Platform"
layout: page
author: "Can André Dautel"
year: 2026
---
Future aircraft concepts will be increasingly interconnected and will require a growing exchange of
data. Communication channels between aircraft and ground infrastructure, as well as between aircraft
themselves, are significantly required to become more reliable and secure. While some security concepts
already exist today, they either (1) terminate at an aircraft access point (i.e., do not protect data across
the internal avionics network) or (2) provide end-to-end encryption mechanisms that are designed primarily
for singlecast communication. In parallel, the aircraft data network built on the Integrated Modular
Avionics (IMA) platform concept is designed around multicast communication and strict resource partitioning.
This leads to several limitations IMA has for security concepts. (i) Multicast environments in IMA
limit the feasibility of handshakes because no backward channel is defined. (ii) Limited computing power
faces increasing resource consumption of PQC algorithms. (iii) Network capabilities and strict resource
constraints interfere with key negotiations for all channel participants. Classic secure channel protocols
such as TLS and DTLS assume a singlecast communication model for handshake and key negotiation.
Although DTLS operates over UDP, its key negotiation is still fundamentally based on singlecast message
exchanges. Therefore, conventional end-to-end encryption fails in this context because multicast key
negotiation and channel-awareness assumptions do not match IMA architecture.
It is unclear how the IMA architecture must be adapted so that a lightweight encryption scheme can be
applied to multicast avionics communication while respecting IMA constraints. To address these limitations,
a multicast key agreement and distribution based on a Key Distribution Center (KDC) is proposed.
An IMA module typically hosts multiple applications and multiple channels. Instead of negotiating keys
separately for every channel by using handshake protocols, the KDC negotiates IMA dependent keys
to deliver channel keys to an IMA module. This supports scalable key provisioning that fits multicast
communication and reduces cryptography overhead on limited resources. Channel dependent multicast
keys can then be securely transported to the module using this established IMA dependent trust.
This approach also offloads computational effort from the IMA module to the KDC, which is beneficial
given limited computing resources in IMA platforms. The proposed architectural changes shown in
figure 1 introduces three functional elements to IMA Modules:
Key Updater agent negotiates a module dependent key between the IMA Module and the KDC. It
receives channel keys and writes updates into the local key storage.
Key Database stores the channel keys and maps them to the relevant ports. It is implemented as
a lookup table (e.g., channel key - port)
Secure Agent provides the cryptographic cipher suite, e.g., AES, for a lightweighted de-/encryption
scheme. The keys can be accessed from the Key Database.
This approach is either implementable as software on an IMA system partition or as hardware on the
I/O controller of the IMA module. Considering hardware implementation, existing IMA applications
stay unchanged, and a minimal effort approach is performed. From another point of view, this enhances
Physical Unclonable Functions (PUF) or FPGA-accelerated Post-Quantum-Cryptography (PQC).