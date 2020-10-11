{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/vicpack-payload-decoder.git";
    rev = "0908382e640658933f6fee2965f1572552bac6f5";
    sha256 = "01r07i7f8qga05da3i5wl1hjvk8583n1p3b5a7qgwqq8kznvzqy2";
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
