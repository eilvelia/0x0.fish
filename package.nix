{
  lib,
  stdenv,
  fish,
  python3Packages,
}:
stdenv.mkDerivation {
  pname = "0x0";
  version = "0.1.1";

  src = ./.;

  buildInputs = [ fish ];
  nativeCheckInputs = [ python3Packages.cram fish ];

  doCheck = true;

  postPatch = ''
    patchShebangs 0x0
  '';

  installPhase = ''
    mkdir -p $out/share/fish/functions $out/share/fish/vendor_completions.d $out/bin
    cp functions/*.fish $out/share/fish/functions/
    cp completions/*.fish $out/share/fish/vendor_completions.d/
    cp 0x0 $out/bin/
  '';

  checkPhase = ''
    HOME=$(mktemp -d) cram test/0x0.t
  '';

  meta = {
    description = "Fully-featured 0x0.st client for fish";
    homepage = "https://github.com/eilvelia/0x0.fish";
    license = lib.licenses.mit;
    maintainers = [ ];
    mainProgram = "0x0";
    platforms = lib.platforms.unix;
  };
}
