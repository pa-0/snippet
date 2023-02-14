with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "snippet";
    src = ./.;
    
    buildInputs = [ gcc tomlplusplus boost ];

    buildPhase = "make";

    installPhase = ''
        mkdir -p $out/bin
        cp snippet $out/bin/
    '';
}