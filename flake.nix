{
  description = "@0xc/dddd";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/30e2e2857ba47844aa71991daa6ed1fc678bcbb7";

    blueprint.url = "github:numtide/blueprint";
    blueprint.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs:
    inputs.blueprint {
      inherit inputs;
      prefix = "./nix";
    };
}
