{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/vicpack-payload-decoder.git";
    rev = "3cae32102241ecbe7954b23d27b9ebd770bfea86";
    sha256 = "0d9f7s7lx3zslcjmwx25ivbvvzx75yld61akl9w0avz5cw4jjqb6";
  };
  buildInputs = with pkgs;
  [ ats2
  ];
  postBuild = ''
    mkdir -p $out
    cp src/vicpack-payload-decoder $out
  '';
  dontInstall = true;

}
