# Prime Masking Verification
Contemporary tools for the automated (formal) verification of masking security properties are often limited to characteristic-2 fields. This repository provides concrete techniques and examples to demonstrate that existing tools can also be used for the verification of circuits masked over arbitrary fields.

## Publication
Source codes and verification collateral contained in this repository are associated with a TCHES 2026 publication titled [Formal Verification, Integration and Physical Evaluation of Prime-Field Masking on Silicon](https://eprint.iacr.org/2026/809) authored by Gaëtan Cassiers, Thorben Moos, Amir Moradi, Nicolai Müller and François-Xavier Standaert.

## Getting Started
To reproduce the provided examples, working installations of the verification tools [SILVER](https://github.com/Chair-for-Security-Engineering/SILVER), [VERICA](https://github.com/Chair-for-Security-Engineering/VERICA), [PROLEAD](https://github.com/ChairImpSec/PROLEAD) and [MATCHI](https://github.com/cassiersg/matchi) are required. We do not aim at providing (or maintaining) comprehensive platform-independent installation guidelines for these tools - ideally, those should be found in their original repositories. However, since some of those instructions are rather outdated or not directly compatible with newer utility versions anymore, we provide one exemplary up-to-date installation guideline at the end of this README.

Once all tools and utilities are installed in the same location (if they are not located in the same directory, their paths need to be adjusted in the Makefile), you may clone this repository into said location (```git clone https://github.com/uclcrypto/prime_masking_verification```), enter its folder (```cd prime_masking_verification```) and call ```make all```. If tools are correctly installed and paths are correctly annotated, this should prompt four consecutive verification runs, one with each tool.

## What Is Verified And How?
Calling ```make all``` executes the make targets ```gadget_formal_silver```, ```gadget_formal_verica```, ```gadget_simu_prolead``` and ```compo_formal_matchi```.

Calling ```make gadget_formal_silver``` prompts a formal verification using SILVER of a pre-synthesized netlist (based on the NanGate 45nm library) of a squaring gadget corresponding to the Makefile parameters **SHARES**, **BITS**, **INPUT_DISTRI** and **VERSION**. Please note that our proofs are currently limited to the trivial composability notion (glitch-robust) t-Probe-Isolating Non-Interference (t-PINI). The relevant SILVER output lines are therefore the ones directly checking for the t-PINI property, for example, *PINI.standard    (d ≤ X) -- PASS* and *PINI.robust    (d ≤ X) -- PASS*.

Calling ```make gadget_formal_verica``` prompts a formal verification using VERICA of a pre-synthesized netlist (based on the NanGate 45nm library) of a squaring gadget corresponding to the Makefile parameters **SHARES**, **BITS**, **INPUT_DISTRI** and **VERSION**. The relevant VERICA output lines are the ones directly checking for the t-PINI property, for example, *ANALYZER         PINI                  SUCCESS*.

Calling ```make gadget_simu_prolead``` prompts a simulation-based verification using PROLEAD of a pre-synthesized netlist (based on the NanGate 45nm library) of a squaring gadget corresponding to the Makefile parameters **SHARES**, **BITS**, **INPUT_DISTRI** and **VERSION**. This verification is not exhaustive but can provide empirical evidence for the (glitch+transition-robust) bit-level probing security of gadgets with parameters for which formal verification is computationally out of reach.

Calling ```make compo_formal_matchi``` prompts the synthesis and simulation of a full [small-pSquare](https://github.com/uclcrypto/small-pSquare) cipher implementation corresponding to the Makefile parameters **SHARES** and **VERSION** followed by composition-level formal verification using MATCHI of the (glitch+transition-robust) probing security of the whole circuit under the assumption that the employed squaring gadget satisfies glitch-robust t-PINI.

## Selecting Valid Parameters
The parameter **SHARES** takes integer values 2, 3 or 4 and denotes the number of shares in the masked implementation. More than 4 shares are currently not implemented.

The parameter **BITS** takes integer values 2, 3 or 5 for formal verification using SILVER/VERICA, and 2, 3, 5 or 7 for simulation-based verification using PROLEAD. This parameter denotes the Mersenne prime exponent *n* in *p = 2^n-1* and therefore also the word size of the underlying field arithmetic.

The parameter **INPUT_DISTRI** takes integer values 0 or 1, where 0 denotes an input distribution *{0, ..., p-1}* and 1 denotes an input distribution *{1, ..., p}*. The input distribution affects the security properties of certain gadget variants.

The parameter **VERSION** takes string values *alpha*, *beta* or *gamma*, in order to select the gadget variant. The different gadget versions are detailed in the associated publication.

## Pre-synthesized Gadget Netlists
The gadget examples in this repository are pre-synthesized into gate-level netlists using Synopsys Design Compiler and the NanGate 45nm library. The respective synthesis scripts are contained in the `Scripts` directory. This step was necessary since access to Design Compiler, which is a proprietary and commercially licensed EDA tool, and the NanGate 45nm Open Cell Library, which is distributed under unclear licensing restrictions and most public download links appear dead, can be restricted. Anyone in possession of both can reproduce the netlists in this repository and synthesyze their own gadgets. Alternatively, [yosys](https://github.com/yosyshq/yosys) can be used as an open-source synthesis tool, *but* the netlists it generates are typically larger and less optimized, limiting formal verification of gadgets to smaller parameters. For compositional verification this is much less problematic, hence our default use of yosys there.

## Verification Tool Installation
We do not aim at providing (or maintaining) comprehensive installation instructions for the verification tools here. However, the following set of commands has been successfully tested for the installation of all four tools on Ubuntu Server 24.04 LTS at the time of writing.

```
# Installing boost 1.90.0
sudo apt update
sudo apt install -y build-essential
sudo apt install -y libboost-filesystem-dev
wget https://archives.boost.io/release/1.90.0/source/boost_1_90_0.tar.gz
tar -zxvf boost_1_90_0.tar.gz
rm boost_1_90_0.tar.gz
cd boost_1_90_0
./bootstrap.sh
./b2
cd ..

# Installing sylvan library
sudo apt update
sudo apt install -y cmake
sudo apt install -y libgmp-dev
git clone https://github.com/trolando/sylvan
cd sylvan
git checkout 5e9da9782885f6215f6b509ac250212df30aaf70
sed -i "s/-Werror //g" CMakeLists.txt
mkdir build
cd build
cmake ..
make && make test
cd ../..

# Installing SILVER
git clone https://github.com/Chair-for-Security-Engineering/SILVER
cd SILVER
git checkout 0a3c85fc5a60d76eedb84d996473df28fc18ef42
cd ..
cp sylvan/build/src/libsylvan.so SILVER/lib/libsylvan.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD/SILVER/lib:$PWD/boost_1_90_0/stage/lib
sed -i "s/(BOOST)\/lib/(BOOST)\/stage\/lib/g" SILVER/makefile
sed -i "s/\/home\/work\/tools\/boost_1_71_0\/install/${PWD//\//\\\/}\/boost_1_90_0/g" SILVER/makefile
cd SILVER
make release
./bin/verify --help
cd ..

# Installing CUDD 3.0.0
wget https://github.com/davidkebo/cudd/raw/refs/heads/main/cudd_versions/cudd-3.0.0.tar.gz
tar -zxvf cudd-3.0.0.tar.gz
rm cudd-3.0.0.tar.gz
cd cudd-3.0.0
./configure --enable-shared --enable-obj
make check
sudo make install
cd ..

# Installing VERICA
git clone https://github.com/Chair-for-Security-Engineering/VERICA
cd VERICA
git checkout f9a192dda285905130c680ffad5a8e083286bb7c
cd ..
sed -i "s/\/home\/gitlab-runner\/boost/${PWD//\//\\\/}\/boost_1_90_0/g" VERICA/makefile
sed -i "s/.\/inc\/cudd/${PWD//\//\\\/}\/cudd-3.0.0\/cudd/g" VERICA/makefile
sed -i "s/.\/lib/${PWD//\//\\\/}\/boost_1_90_0\/stage\/lib/g" VERICA/makefile
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
cd VERICA
make release
./bin/release/verica --help
cd ..

# Installing PROLEAD
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
. $HOME/.nix-profile/etc/profile.d/nix.sh
git clone https://github.com/ChairImpSec/PROLEAD
cd PROLEAD
git checkout c5eb091c5e65380d9086c02fe2b9d0b568581d53
nix-env -i -f default.nix
PROLEAD
cd ..

# Installing MATCHI
sudo apt update
sudo apt install -y cargo
sudo apt install -y rustup
sudo apt install -y verilog
sudo apt install -y yosys
rustup default stable
git clone https://github.com/cassiersg/matchi
cd matchi
git checkout 9bab4ed857813fe1a8d1e1f022e1d47f719bc255
cd matchi
cargo build --release
./target/release/matchi --help
cd ../..
```