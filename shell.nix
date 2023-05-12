{ pkgs ? import <nixpkgs> { }, nixpkgs ? <nixpkgs> }:
let
    inherit (pkgs.lib) optional optionals;
    erlangR25 = pkgs.beam.interpreters.erlangR25;
    elixir_1_14 = pkgs.beam.packages.erlangR25.elixir_1_14;
    elixir_ls_1_14 =  pkgs.elixir_ls.override {
      elixir = elixir_1_14;
    };

in pkgs.mkShell rec {
  name = "ssg-still";
  buildInputs = with pkgs; [
    rebar
    rebar3
    erlangR25
    elixir_1_14
    elixir_ls_1_14
    nodejs
   ] ++ optional stdenv.isLinux inotify-tools ++ optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [ CoreFoundation CoreServices ]);

   shellHook = ''
     # this allows mix to work on the local directory
     mkdir -p .nix-mix
     mkdir -p .nix-hex
     export MIX_HOME=$PWD/.nix-mix
     export HEX_HOME=$PWD/.nix-hex
     export PATH=$MIX_HOME/bin:$PATH
     export PATH=$HEX_HOME/bin:$PATH
     export LANG=en_US.UTF-8
     export ERL_AFLAGS="-kernel shell_history enabled"
     export ERL_LIBS=""
   '';
}
