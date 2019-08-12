{ stdenv, buildEnv, writeShellScriptBin, writeText, pkgs }:

let
  customScripts = [
    /*(writeShellScriptBin "ext-kubernetes-upgrade-tools" ''
      #!/usr/bin/env bash
      set -xeuo pipefail
      cargo install --list \
        | grep -ve "^ " \
        | awk '{print $1}' \
        | xargs -n1 -I'{}' \
          cargo +nightly install --force '{}'
    '')*/
  ];


in buildEnv {
  name    = "ruby-ext";

  meta = with stdenv.lib; {
    description = "common Ruby environment plus extra custom extensions";
    homepage    = "https://gitlab.com/fnctl-nix/pkgs-overlay.git";
    license     = licenses.mit;
    maintainers = [ maintainers.jakelogemann ];
    platforms   = platforms.linux;
    priority    = -502;
  };

  pathsToLink      = ["/bin"];
  ignoreCollisions = true;

  paths = with pkgs; [
    ruby_2_6
  ] ++ customScripts;

}
