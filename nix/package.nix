{ system, pkgs, ... }:
with pkgs; buildGoModule rec {
  pname = "dddd";
  version = "0.2.4";

  src = ../.;

  vendorHash = "sha256-ycHZQogDGleBRUgS00jIiNHdelO4jWM5qhjQPgjgGrU=";

  meta = with lib; {
    description = " Dynamic DNS for Cloudflare using DuckDuckGo's Answers API ¯\\_(ツ)_/¯ ";
    mainProgram = "dddd";
    homepage = "https://github.com/tcarrio/dddd";
    changelog = "https://github.com/tcarrio/dddd/releases/tag/v${version}";
    license = licenses.gpl3;
    maintainers = with maintainers; [ tcarrio ];
  };
}

