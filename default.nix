with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "BLEHeartRateLogger";
    env = buildEnv {
        name = name;
        paths = buildInputs;
    };

    buildInputs = [
        python37Full
        python37Packages.pexpect
        python37Packages.setuptools
    ];

    shellHook = ''
      alias run='./BLEHeartRateLogger.py -v'
      cat default.nix | grep '^ \+\(function\|alias\) .\+'
    '';
}

