# mediasoup-build-arm64-alpine-bug

`docker build .`

```
=> ERROR [5/5] RUN npm install --omit=dev                                                                                                                                                                                                                                  46.6s
------
 > [5/5] RUN npm install --omit=dev:
46.55 npm notice 
46.55 npm notice New minor version of npm available! 10.1.0 -> 10.2.3
46.55 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v10.2.3>
46.55 npm notice Run `npm install -g npm@10.2.3` to update!
46.55 npm notice 
46.55 npm ERR! code 1
46.55 npm ERR! path /app/node_modules/mediasoup
46.55 npm ERR! command failed
46.55 npm ERR! command sh -c node npm-scripts.mjs postinstall
46.55 npm ERR! npm-scripts [INFO] [postinstall] skipping mediasoup-worker prebuilt download, building it locally
46.55 npm ERR! npm-scripts [INFO] [postinstall] buildWorker()
46.55 npm ERR! npm-scripts [INFO] [postinstall] executeCmd(): make -C worker
46.55 npm ERR! make: Entering directory '/app/node_modules/mediasoup/worker'
46.55 npm ERR! # Updated pip and setuptools are needed for meson.
46.55 npm ERR! # `--system` is not present everywhere and is only needed as workaround for
46.55 npm ERR! # Debian-specific issue (copied from https://github.com/gluster/gstatus/pull/33),
46.55 npm ERR! # fallback to command without `--system` if the first one fails.
46.55 npm ERR! /usr/bin/python3 -m pip install --system --target=/app/node_modules/mediasoup/worker/out/pip pip setuptools || \
46.55 npm ERR! 	/usr/bin/python3 -m pip install --target=/app/node_modules/mediasoup/worker/out/pip pip setuptools || \
46.55 npm ERR! 	echo "Installation failed, likely because PIP is unavailable, if you are on Debian/Ubuntu or derivative please install the python3-pip package"
46.55 npm ERR! Collecting pip
46.55 npm ERR!   Downloading pip-23.3.1-py3-none-any.whl (2.1 MB)
46.55 npm ERR!      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 35.2 MB/s eta 0:00:00
46.55 npm ERR! Collecting setuptools
46.55 npm ERR!   Downloading setuptools-68.2.2-py3-none-any.whl (807 kB)
46.55 npm ERR!      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 807.9/807.9 kB 39.3 MB/s eta 0:00:00
46.55 npm ERR! Installing collected packages: setuptools, pip
46.55 npm ERR! Successfully installed pip-23.3.1 setuptools-68.2.2
46.55 npm ERR! # Install `meson` and `ninja` using `pip` into custom location, so we don't
46.55 npm ERR! # depend on system-wide installation.
46.55 npm ERR! /usr/bin/python3 -m pip install --upgrade --target=/app/node_modules/mediasoup/worker/out/pip  meson==1.2.1 ninja==1.10.2.4
46.55 npm ERR! Collecting meson==1.2.1
46.55 npm ERR!   Downloading meson-1.2.1-py3-none-any.whl.metadata (1.7 kB)
46.55 npm ERR! Collecting ninja==1.10.2.4
46.55 npm ERR!   Downloading ninja-1.10.2.4-py2.py3-none-musllinux_1_1_x86_64.whl (673 kB)
46.55 npm ERR!      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 673.8/673.8 kB 16.2 MB/s eta 0:00:00
46.55 npm ERR! Downloading meson-1.2.1-py3-none-any.whl (962 kB)
46.55 npm ERR!    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 962.5/962.5 kB 61.7 MB/s eta 0:00:00
46.55 npm ERR! Installing collected packages: ninja, meson
46.55 npm ERR! Successfully installed meson-1.2.1 ninja-1.10.2.4
46.55 npm ERR! /app/node_modules/mediasoup/worker/out/pip/bin/meson setup \
46.55 npm ERR! 	--prefix /app/node_modules/mediasoup/worker/out/Release \
46.55 npm ERR! 	--bindir '' \
46.55 npm ERR! 	--libdir '' \
46.55 npm ERR! 	--buildtype release \
46.55 npm ERR! 	-Db_ndebug=true \
46.55 npm ERR! 	-Db_pie=true \
46.55 npm ERR! 	-Db_staticpic=true \
46.55 npm ERR! 	--reconfigure \
46.55 npm ERR! 	"" \
46.55 npm ERR! 	/app/node_modules/mediasoup/worker/out/Release/build || \
46.55 npm ERR! 	/app/node_modules/mediasoup/worker/out/pip/bin/meson setup \
46.55 npm ERR! 		--prefix /app/node_modules/mediasoup/worker/out/Release \
46.55 npm ERR! 		--bindir '' \
46.55 npm ERR! 		--libdir '' \
46.55 npm ERR! 		--buildtype release \
46.55 npm ERR! 		-Db_ndebug=true \
46.55 npm ERR! 		-Db_pie=true \
46.55 npm ERR! 		-Db_staticpic=true \
46.55 npm ERR! 		"" \
46.55 npm ERR! 		/app/node_modules/mediasoup/worker/out/Release/build
46.55 npm ERR! The Meson build system
46.55 npm ERR! Version: 1.2.1
46.55 npm ERR! Source dir: /app/node_modules/mediasoup/worker
46.55 npm ERR! Build dir: /app/node_modules/mediasoup/worker/out/Release/build
46.55 npm ERR! Build type: native build
46.55 npm ERR! Project name: mediasoup-worker
46.55 npm ERR! Project version: undefined
46.55 npm ERR! C compiler for the host machine: cc (gcc 12.2.1 "cc (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! C linker for the host machine: cc ld.bfd 2.40
46.55 npm ERR! C++ compiler for the host machine: c++ (gcc 12.2.1 "c++ (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! C++ linker for the host machine: c++ ld.bfd 2.40
46.55 npm ERR! Host machine cpu family: x86_64
46.55 npm ERR! Host machine cpu: x86_64
46.55 npm ERR! Downloading openssl source from https://www.openssl.org/source/openssl-3.0.8.tar.gz
46.55 npm ERR! Downloading openssl patch from https://wrapdb.mesonbuild.com/v2/openssl_3.0.8-1/get_patch
46.55 npm ERR! 
46.55 npm ERR! Executing subproject openssl 
46.55 npm ERR! 
46.55 npm ERR! openssl| Project name: openssl
46.55 npm ERR! openssl| Project version: 3.0.8
46.55 npm ERR! openssl| C compiler for the host machine: cc (gcc 12.2.1 "cc (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! openssl| C linker for the host machine: cc ld.bfd 2.40
46.55 npm ERR! openssl| Run-time dependency threads found: YES
46.55 npm ERR! openssl| Program as found: YES (/usr/bin/as)
46.55 npm ERR! openssl| Message: OpenSSL is configured with ASM support
46.55 npm ERR! openssl| Library dl found: YES
46.55 npm ERR! openssl| Build targets in project: 3
46.55 npm ERR! openssl| Subproject openssl finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading libuv source from https://dist.libuv.org/dist/v1.44.2/libuv-v1.44.2.tar.gz
46.55 npm ERR! Downloading libuv patch from https://wrapdb.mesonbuild.com/v2/libuv_1.44.2-2/get_patch
46.55 npm ERR! 
46.55 npm ERR! Executing subproject libuv 
46.55 npm ERR! 
46.55 npm ERR! libuv| Project name: libuv
46.55 npm ERR! libuv| Project version: 1.44.2
46.55 npm ERR! libuv| C compiler for the host machine: cc (gcc 12.2.1 "cc (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! libuv| C linker for the host machine: cc ld.bfd 2.40
46.55 npm ERR! libuv| Fetching value of define "__QNX__" :
46.55 npm ERR! libuv| Fetching value of define "_AIX" :
46.55 npm ERR! libuv| Message: System: linux
46.55 npm ERR! libuv| Compiler for C supports arguments -fno-strict-aliasing: YES
46.55 npm ERR! libuv| Dependency threads found: YES unknown (cached)
46.55 npm ERR! libuv| Library dl found: YES
46.55 npm ERR! libuv| Library rt found: YES
46.55 npm ERR! libuv| Build targets in project: 4
46.55 npm ERR! libuv| Subproject libuv finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading libsrtp2 source from https://github.com/cisco/libsrtp/archive/refs/tags/v2.5.0.tar.gz
46.55 npm ERR! 
46.55 npm ERR! Executing subproject libsrtp2 
46.55 npm ERR! 
46.55 npm ERR! libsrtp2| Project name: libsrtp2
46.55 npm ERR! libsrtp2| Project version: 2.5.0
46.55 npm ERR! libsrtp2| C compiler for the host machine: cc (gcc 12.2.1 "cc (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! libsrtp2| C linker for the host machine: cc ld.bfd 2.40
46.55 npm ERR! libsrtp2| Has header "arpa/inet.h" : YES
46.55 npm ERR! libsrtp2| Has header "byteswap.h" : YES
46.55 npm ERR! libsrtp2| Has header "inttypes.h" : YES
46.55 npm ERR! libsrtp2| Has header "machine/types.h" : NO
46.55 npm ERR! libsrtp2| Has header "netinet/in.h" : YES
46.55 npm ERR! libsrtp2| Has header "stdint.h" : YES
46.55 npm ERR! libsrtp2| Has header "stdlib.h" : YES
46.55 npm ERR! libsrtp2| Has header "sys/int_types.h" : NO
46.55 npm ERR! libsrtp2| Has header "sys/socket.h" : YES
46.55 npm ERR! libsrtp2| Has header "sys/types.h" : YES
46.55 npm ERR! libsrtp2| Has header "sys/uio.h" : YES
46.55 npm ERR! libsrtp2| Has header "unistd.h" : YES
46.55 npm ERR! libsrtp2| Checking for function "sigaction" : YES
46.55 npm ERR! libsrtp2| Checking for function "inet_aton" : YES
46.55 npm ERR! libsrtp2| Checking for function "inet_pton" : YES
46.55 npm ERR! libsrtp2| Checking for function "usleep" : YES
46.55 npm ERR! libsrtp2| Checking for function "socket" : YES
46.55 npm ERR! libsrtp2| Has header "stdint.h" : YES (cached)
46.55 npm ERR! libsrtp2| Checking for type "size_t" : YES
46.55 npm ERR! libsrtp2| Checking for type "unsigned long" : YES
46.55 npm ERR! libsrtp2| Checking for size of "unsigned long" : 8
46.55 npm ERR! libsrtp2| Checking for type "unsigned long long" : YES
46.55 npm ERR! libsrtp2| Checking for size of "unsigned long long" : 8
46.55 npm ERR! libsrtp2| Checking if "inline keyword check" compiles: YES
46.55 npm ERR! libsrtp2| Dependency openssl from subproject subprojects/openssl-3.0.8 found: YES 3.0.8
46.55 npm ERR! libsrtp2| Configuring config.h using configuration
46.55 npm ERR! libsrtp2| Compiler for C supports arguments -Wstrict-prototypes: YES
46.55 npm ERR! libsrtp2| Compiler for C supports arguments -funroll-loops: YES
46.55 npm ERR! libsrtp2| Program doxygen found: NO
46.55 npm ERR! libsrtp2| Build targets in project: 5
46.55 npm ERR! libsrtp2| NOTICE: Future-deprecated features used:
46.55 npm ERR! libsrtp2| * 0.64.0: {'copy arg in configure_file'}
46.55 npm ERR! libsrtp2| Subproject libsrtp2 finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading usrsctp source from https://github.com/sctplab/usrsctp/archive/4e06feb01cadcd127d119486b98a4bd3d64aa1e7.zip
46.55 npm ERR! 
46.55 npm ERR! Executing subproject usrsctp 
46.55 npm ERR! 
46.55 npm ERR! usrsctp| Project name: usrsctplib
46.55 npm ERR! usrsctp| Project version: 0.9.5.0
46.55 npm ERR! usrsctp| C compiler for the host machine: cc (gcc 12.2.1 "cc (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! usrsctp| C linker for the host machine: cc ld.bfd 2.40
46.55 npm ERR! usrsctp| Compiler for C supports arguments -pedantic: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wfloat-equal: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wshadow: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wpointer-arith: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Winit-self: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wno-unused-function: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wno-unused-parameter: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wno-unreachable-code: YES
46.55 npm ERR! usrsctp| Compiler for C supports arguments -Wstrict-prototypes: YES (cached)
46.55 npm ERR! usrsctp| Dependency threads found: YES unknown (cached)
46.55 npm ERR! usrsctp| Has header "sys/queue.h" : NO
46.55 npm ERR! usrsctp| Has header "sys/socket.h" : YES (cached)
46.55 npm ERR! usrsctp| Has header "linux/if_addr.h" : YES
46.55 npm ERR! usrsctp| Has header "linux/rtnetlink.h" : YES
46.55 npm ERR! usrsctp| Has header "sys/types.h" : YES (cached)
46.55 npm ERR! usrsctp| Has header "netinet/in.h" : YES (cached)
46.55 npm ERR! usrsctp| Has header "netinet/ip.h" : YES
46.55 npm ERR! usrsctp| Has header "netinet/ip_icmp.h" : YES
46.55 npm ERR! usrsctp| Has header "net/route.h" : YES
46.55 npm ERR! usrsctp| Has header "stdatomic.h" : YES
46.55 npm ERR! usrsctp| Checking whether type "struct sockaddr" has member "sa_len" : NO
46.55 npm ERR! usrsctp| Checking whether type "struct sockaddr_in" has member "sin_len" : NO
46.55 npm ERR! usrsctp| Checking whether type "struct sockaddr_in6" has member "sin6_len" : NO
46.55 npm ERR! usrsctp| Checking whether type "struct sockaddr_conn" has member "sconn_len" : NO
46.55 npm ERR! usrsctp| Build targets in project: 6
46.55 npm ERR! usrsctp| Subproject usrsctp finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading abseil-cpp source from https://github.com/abseil/abseil-cpp/archive/20220623.0.tar.gz
46.55 npm ERR! Downloading abseil-cpp patch from https://wrapdb.mesonbuild.com/v2/abseil-cpp_20220623.0-2/get_patch
46.55 npm ERR! 
46.55 npm ERR! Executing subproject abseil-cpp 
46.55 npm ERR! 
46.55 npm ERR! abseil-cpp| Project name: abseil-cpp
46.55 npm ERR! abseil-cpp| Project version: 20220623.0
46.55 npm ERR! abseil-cpp| C++ compiler for the host machine: c++ (gcc 12.2.1 "c++ (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! abseil-cpp| C++ linker for the host machine: c++ ld.bfd 2.40
46.55 npm ERR! abseil-cpp| Compiler for C++ supports arguments -Wno-sign-compare: YES
46.55 npm ERR! abseil-cpp| Compiler for C++ supports arguments -maes: YES
46.55 npm ERR! abseil-cpp| Compiler for C++ supports arguments -msse4.1: YES
46.55 npm ERR! abseil-cpp| Checking if "GCC atomic builtins" : links: YES
46.55 npm ERR! abseil-cpp| Dependency threads found: YES unknown (cached)
46.55 npm ERR! abseil-cpp| Did not find pkg-config by name 'pkg-config'
46.55 npm ERR! abseil-cpp| Found Pkg-config: NO
46.55 npm ERR! abseil-cpp| Did not find CMake 'cmake'
46.55 npm ERR! abseil-cpp| Found CMake: NO
46.55 npm ERR! abseil-cpp| Run-time dependency corefoundation found: NO (tried pkgconfig and cmake)
46.55 npm ERR! abseil-cpp| Build targets in project: 19
46.55 npm ERR! abseil-cpp| Subproject abseil-cpp finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading catch2 source from https://github.com/catchorg/Catch2/archive/v2.13.7.zip
46.55 npm ERR! Downloading catch2 patch from https://wrapdb.mesonbuild.com/v2/catch2_2.13.7-1/get_patch
46.55 npm ERR! 
46.55 npm ERR! Executing subproject catch2 
46.55 npm ERR! 
46.55 npm ERR! catch2| Project name: catch2
46.55 npm ERR! catch2| Project version: 2.13.7
46.55 npm ERR! catch2| C++ compiler for the host machine: c++ (gcc 12.2.1 "c++ (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! catch2| C++ linker for the host machine: c++ ld.bfd 2.40
46.55 npm ERR! catch2| Build targets in project: 19
46.55 npm ERR! catch2| Subproject catch2 finished.
46.55 npm ERR! 
46.55 npm ERR! Downloading flatbuffers source from https://github.com/google/flatbuffers/archive/v23.3.3.tar.gz
46.55 npm ERR! Downloading flatbuffers patch from https://wrapdb.mesonbuild.com/v2/flatbuffers_23.3.3-1/get_patch
46.55 npm ERR! 
46.55 npm ERR! Executing subproject flatbuffers 
46.55 npm ERR! 
46.55 npm ERR! flatbuffers| Project name: flatbuffers
46.55 npm ERR! flatbuffers| Project version: 23.3.3
46.55 npm ERR! flatbuffers| C++ compiler for the host machine: c++ (gcc 12.2.1 "c++ (Alpine 12.2.1_git20220924-r10) 12.2.1 20220924")
46.55 npm ERR! flatbuffers| C++ linker for the host machine: c++ ld.bfd 2.40
46.55 npm ERR! flatbuffers| Checking for function "strtoull_l" : NO
46.55 npm ERR! flatbuffers| Compiler for C++ supports arguments -fsigned-char: YES
46.55 npm ERR! flatbuffers| Build targets in project: 29
46.55 npm ERR! flatbuffers| Subproject flatbuffers finished.
46.55 npm ERR! 
46.55 npm ERR! Program flatc found: YES (overridden)
46.55 npm ERR! Build targets in project: 36
46.55 npm ERR! 
46.55 npm ERR! mediasoup-worker undefined
46.55 npm ERR! 
46.55 npm ERR!   Subprojects
46.55 npm ERR!     abseil-cpp : YES
46.55 npm ERR!     catch2     : YES
46.55 npm ERR!     flatbuffers: YES
46.55 npm ERR!     libsrtp2   : YES 1 warnings
46.55 npm ERR!     libuv      : YES
46.55 npm ERR!     openssl    : YES
46.55 npm ERR!     usrsctp    : YES
46.55 npm ERR! 
46.55 npm ERR!   User defined options
46.55 npm ERR!     bindir     : 
46.55 npm ERR!     buildtype  : release
46.55 npm ERR!     libdir     : 
46.55 npm ERR!     prefix     : /app/node_modules/mediasoup/worker/out/Release
46.55 npm ERR!     b_ndebug   : true
46.55 npm ERR!     b_pie      : true
46.55 npm ERR!     b_staticpic: true
46.55 npm ERR! 
46.55 npm ERR! Found ninja-1.10.2.git.kitware.jobserver-1 at /app/node_modules/mediasoup/worker/out/pip/bin/ninja
46.55 npm ERR! /app/node_modules/mediasoup/worker/out/pip/bin/meson compile -C /app/node_modules/mediasoup/worker/out/Release/build flatbuffers-generator
46.55 npm ERR! ninja: Entering directory `/app/node_modules/mediasoup/worker/out/Release/build'
46.55 npm ERR! [1/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_util.cpp.o
46.55 npm ERR! [2/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_code_generators.cpp.o
46.55 npm ERR! [3/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libpython_generator.a.p/grpc_src_compiler_python_generator.cc.o
46.55 npm ERR! [4/46] Linking static target subprojects/flatbuffers-23.3.3/libpython_generator.a
46.55 npm ERR! [5/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_idl_gen_binary.cpp.o
46.55 npm ERR! [6/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_reflection.cpp.o
46.55 npm ERR! [7/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libcpp_generator.a.p/grpc_src_compiler_cpp_generator.cc.o
46.55 npm ERR! [8/46] Linking static target subprojects/flatbuffers-23.3.3/libcpp_generator.a
46.55 npm ERR! [9/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libgo_generator.a.p/grpc_src_compiler_go_generator.cc.o
46.55 npm ERR! [10/46] Linking static target subprojects/flatbuffers-23.3.3/libgo_generator.a
46.55 npm ERR! [11/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_idl_gen_text.cpp.o
46.55 npm ERR! [12/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libts_generator.a.p/grpc_src_compiler_ts_generator.cc.o
46.55 npm ERR! [13/46] Linking static target subprojects/flatbuffers-23.3.3/libts_generator.a
46.55 npm ERR! [14/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libswift_generator.a.p/grpc_src_compiler_swift_generator.cc.o
46.55 npm ERR! [15/46] Linking static target subprojects/flatbuffers-23.3.3/libswift_generator.a
46.55 npm ERR! [16/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libjava_generator.a.p/grpc_src_compiler_java_generator.cc.o
46.55 npm ERR! [17/46] Linking static target subprojects/flatbuffers-23.3.3/libjava_generator.a
46.55 npm ERR! [18/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_annotated_binary_text_gen.cpp.o
46.55 npm ERR! [19/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_flatc_main.cpp.o
46.55 npm ERR! [20/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_bfbs_gen_lua.cpp.o
46.55 npm ERR! [21/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatc_library.a.p/src_flatc.cpp.o
46.55 npm ERR! [22/46] Linking static target subprojects/flatbuffers-23.3.3/libflatc_library.a
46.55 npm ERR! [23/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_bfbs_gen_nim.cpp.o
46.55 npm ERR! [24/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_binary_annotator.cpp.o
46.55 npm ERR! [25/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_fbs.cpp.o
46.55 npm ERR! [26/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_grpc.cpp.o
46.55 npm ERR! [27/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_dart.cpp.o
46.55 npm ERR! [28/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_go.cpp.o
46.55 npm ERR! [29/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_lobster.cpp.o
46.55 npm ERR! [30/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_json_schema.cpp.o
46.55 npm ERR! [31/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_lua.cpp.o
46.55 npm ERR! [32/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_php.cpp.o
46.55 npm ERR! [33/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_kotlin.cpp.o
46.55 npm ERR! [34/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_csharp.cpp.o
46.55 npm ERR! [35/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_util.cpp.o
46.55 npm ERR! [36/46] Compiling C++ object subprojects/flatbuffers-23.3.3/libflatbuffers.a.p/src_idl_parser.cpp.o
46.55 npm ERR! [37/46] Linking static target subprojects/flatbuffers-23.3.3/libflatbuffers.a
46.55 npm ERR! [38/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_text.cpp.o
46.55 npm ERR! [39/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_cpp.cpp.o
46.55 npm ERR! [40/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_python.cpp.o
46.55 npm ERR! [41/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_java.cpp.o
46.55 npm ERR! [42/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_swift.cpp.o
46.55 npm ERR! [43/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_ts.cpp.o
46.55 npm ERR! [44/46] Compiling C++ object subprojects/flatbuffers-23.3.3/flatc.p/src_idl_gen_rust.cpp.o
46.55 npm ERR! [45/46] Linking target subprojects/flatbuffers-23.3.3/flatc
46.55 npm ERR! [46/46] Generating fbs/flatbuffers-generator with a custom command
46.55 npm ERR! INFO: autodetecting backend as ninja
46.55 npm ERR! INFO: calculating backend command to run: /app/node_modules/mediasoup/worker/out/pip/bin/ninja -C /app/node_modules/mediasoup/worker/out/Release/build fbs/FBS
46.55 npm ERR! /app/node_modules/mediasoup/worker/out/pip/bin/meson compile -C /app/node_modules/mediasoup/worker/out/Release/build -j 8 mediasoup-worker
46.55 npm ERR! ninja: Entering directory `/app/node_modules/mediasoup/worker/out/Release/build'
46.55 npm ERR! [1/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpEcn.cpp.o
46.55 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpEcn.cpp.o 
46.55 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpEcn.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpEcn.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpEcn.cpp.o -c ../../../src/RTC/RTCP/FeedbackRtpEcn.cpp
46.55 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.55 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.55 npm ERR!                  from ../../../include/Settings.hpp:6,
46.55 npm ERR!                  from ../../../include/Logger.hpp:91,
46.55 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackRtpEcn.cpp:5:
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.55 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.55 npm ERR!       |                                      ^~~~~~~~~
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.55 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.55 npm ERR!       |            ^~~~~~~~~~~~~~
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.55 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.55 npm ERR!       |                                       ^~~~~~~~~~
46.55 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.55 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.55 npm ERR!       |          ^~~~~~~~~~~~~~~
46.55 npm ERR! [2/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackPsRpsi.cpp.o
46.55 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackPsRpsi.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackPsRpsi.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackPsRpsi.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackPsRpsi.cpp.o -c ../../../src/RTC/RTCP/FeedbackPsRpsi.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackPsRpsi.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [3/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpSrReq.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpSrReq.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpSrReq.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpSrReq.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpSrReq.cpp.o -c ../../../src/RTC/RTCP/FeedbackRtpSrReq.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackRtpSrReq.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [4/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTllei.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTllei.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTllei.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTllei.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTllei.cpp.o -c ../../../src/RTC/RTCP/FeedbackRtpTllei.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackRtpTllei.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [5/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackPsSli.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackPsSli.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackPsSli.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackPsSli.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackPsSli.cpp.o -c ../../../src/RTC/RTCP/FeedbackPsSli.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackPsSli.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [6/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackPsFir.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackPsFir.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackPsFir.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackPsFir.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackPsFir.cpp.o -c ../../../src/RTC/RTCP/FeedbackPsFir.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackPsFir.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [7/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTransport.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTransport.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTransport.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTransport.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackRtpTransport.cpp.o -c ../../../src/RTC/RTCP/FeedbackRtpTransport.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackRtpTransport.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! [8/1327] Compiling C++ object mediasoup-worker.p/src_RTC_RTCP_FeedbackPsPli.cpp.o
46.56 npm ERR! FAILED: mediasoup-worker.p/src_RTC_RTCP_FeedbackPsPli.cpp.o 
46.56 npm ERR! c++ -Imediasoup-worker.p -I. -I../../.. -I../../../include -Isubprojects/abseil-cpp-20220623.0 -I../../../subprojects/abseil-cpp-20220623.0 -I../../../subprojects/openssl-3.0.8/include -I../../../subprojects/openssl-3.0.8/crypto -I../../../subprojects/openssl-3.0.8/crypto/modes -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448 -I../../../subprojects/openssl-3.0.8/crypto/ec/curve448/arch_32 -I../../../subprojects/openssl-3.0.8/providers/common/include -I../../../subprojects/openssl-3.0.8/providers/implementations/include -Isubprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/include -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/crypto -I../../../subprojects/openssl-3.0.8/generated-config/archs/linux-x86_64/asm/providers/common/include -I../../../subprojects/libuv-v1.44.2/include -Isubprojects/libsrtp-2.5.0/include -I../../../subprojects/libsrtp-2.5.0/include -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet -Isubprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/usrsctp-4e06feb01cadcd127d119486b98a4bd3d64aa1e7/usrsctplib/netinet6 -I../../../subprojects/flatbuffers-23.3.3/include -I../../../subprojects/flatbuffers-23.3.3/grpc -Ifbs -I../../../fbs -Ideps/libwebrtc -I../../../deps/libwebrtc -I../../../deps/libwebrtc/libwebrtc -fdiagnostics-color=always -DNDEBUG -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -std=c++17 -O3 -fPIE -pthread -DMS_LITTLE_ENDIAN -DMS_EXECUTABLE -MD -MQ mediasoup-worker.p/src_RTC_RTCP_FeedbackPsPli.cpp.o -MF mediasoup-worker.p/src_RTC_RTCP_FeedbackPsPli.cpp.o.d -o mediasoup-worker.p/src_RTC_RTCP_FeedbackPsPli.cpp.o -c ../../../src/RTC/RTCP/FeedbackPsPli.cpp
46.56 npm ERR! In file included from ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/minireflect.h:21,
46.56 npm ERR!                  from ../../../include/Channel/ChannelRequest.hpp:8,
46.56 npm ERR!                  from ../../../include/Settings.hpp:6,
46.56 npm ERR!                  from ../../../include/Logger.hpp:91,
46.56 npm ERR!                  from ../../../src/RTC/RTCP/FeedbackPsPli.cpp:5:
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(int64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:229:38: error: 'strtoll_l' was not declared in this scope; did you mean 'strtold_l'?
46.56 npm ERR!   229 |     #define __strtoll_impl(s, pe, b) strtoll_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                      ^~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:247:12: note: in expansion of macro '__strtoll_impl'
46.56 npm ERR!   247 |     *val = __strtoll_impl(str, endptr, base);
46.56 npm ERR!       |            ^~~~~~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h: In function 'void flatbuffers::strtoval_impl(uint64_t*, const char*, char**, int)':
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:228:39: error: 'strtoull_l' was not declared in this scope; did you mean 'strtoull'?
46.56 npm ERR!   228 |     #define __strtoull_impl(s, pe, b) strtoull_l(s, pe, b, ClassicLocale::Get())
46.56 npm ERR!       |                                       ^~~~~~~~~~
46.56 npm ERR! ../../../subprojects/flatbuffers-23.3.3/include/flatbuffers/util.h:252:10: note: in expansion of macro '__strtoull_impl'
46.56 npm ERR!   252 |   *val = __strtoull_impl(str, endptr, base);
46.56 npm ERR!       |          ^~~~~~~~~~~~~~~
46.56 npm ERR! ninja: build stopped: subcommand failed.
46.56 npm ERR! INFO: autodetecting backend as ninja
46.56 npm ERR! INFO: calculating backend command to run: /app/node_modules/mediasoup/worker/out/pip/bin/ninja -C /app/node_modules/mediasoup/worker/out/Release/build -j 8 mediasoup-worker
46.56 npm ERR! make: Leaving directory '/app/node_modules/mediasoup/worker'
46.56 npm ERR! Usage:   
46.56 npm ERR!   /usr/bin/python3 -m pip install [options] <requirement specifier> [package-index-options] ...
46.56 npm ERR!   /usr/bin/python3 -m pip install [options] -r <requirements file> [package-index-options] ...
46.56 npm ERR!   /usr/bin/python3 -m pip install [options] [-e] <vcs project url> ...
46.56 npm ERR!   /usr/bin/python3 -m pip install [options] [-e] <local project path> ...
46.56 npm ERR!   /usr/bin/python3 -m pip install [options] <archive url/path> ...
46.56 npm ERR! 
46.56 npm ERR! no such option: --system
46.56 npm ERR! WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
46.56 npm ERR! WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
46.56 npm ERR! make: *** [Makefile:201: mediasoup-worker] Error 1
46.56 npm ERR! npm-scripts [ERROR] [postinstall] executeCmd() failed, exiting: Error: Command failed: make -C worker
46.56 
46.56 npm ERR! A complete log of this run can be found in: /root/.npm/_logs/2023-11-15T20_07_37_471Z-debug-0.log
------
Dockerfile:13
--------------------
  11 |     ENV MEDIASOUP_SKIP_WORKER_PREBUILT_DOWNLOAD="true"
  12 |     
  13 | >>> RUN npm install --omit=dev
  14 |     
  15 |     
--------------------
ERROR: failed to solve: process "/bin/sh -c npm install --omit=dev" did not complete successfully: exit code: 1
```

