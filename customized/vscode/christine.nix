{ buildEnv, vscode-with-extensions, vscode-extensions, vscode-utils }:


buildEnv {
  name = "vscode-christine";
  paths = [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        bbenoist.Nix
        ms-vscode.cpptools
        ms-python
      ] ++ vscode-utils.extensionsFromVscodeMarketplace [
        # Run `sha256sum <file.vsix>` and get the metadata from the extension page.
          { sha256 = "02e91379ff0770c2a15e7447703fb6cf235d64caf9f0809b2598e477430a90ac";  publisher = "dracula-theme";        name = "theme-dracula";            version = "2.17.0"; }
          { sha256 = "a5e1b742053d63d59c6a9b38f51705a3083d72497ed4fc00eac849332faadab1";  publisher = "monokai";              name = "theme-monokai-pro-vscode"; version = "1.1.12"; }
          { sha256 = "b4d064cdd7c0d254fd2706d24958f3ec6a2727f35406fa38a9e7841cf16249ee";  publisher = "jolaleye";             name = "horizon-theme-vscode";     version = "1.8.0"; }

          { sha256 = "0gra5sh4ln20fsbmg9hawxsv5c2yd7cw5frhcc2m3p793hgr3lq0";              publisher = "vscodevim";            name = "vim";                      version = "1.8.1"; }
          { sha256 = "1884a1ry3ia19d13kscyfn09d80mr5ywkglv3ynq1n14i2l0hf18";              publisher = "auiworks";             name = "amvim";                    version = "1.30.0"; }

          { sha256 = "214364c22ee52aa83e0970876f25da543bcd41446127e85bf22730bab421fef8";  publisher = "hackwaly";             name = "ocaml";                    version = "0.6.43"; }
          { sha256 = "0i2b896cnlk1d23w3jgy8wdqsww2lz201iym5c1rqbjzg1g3v3r4";              publisher = "christian-kohler";     name = "path-intellisense";        version = "1.4.2"; }
          { sha256 = "0pcrvdd91cx9s00094a52azdphnqjb72sv9wvkhj4wxz1v8lm08q";              publisher = "Gruntfuggly";          name = "todo-tree";                version = "0.0.130"; }
          { sha256 = "1y6y17zcfx56dqnki7yz4awl5b0xwajrlfg2jbwcpwpsi0njz46q";              publisher = "alefragnani";          name = "Bookmarks";                version = "10.4.3"; }
          { sha256 = "1k8l5pyacpld9r76fqynpdx0zkzylvb5lickvxlnql2zb70cxk05";              publisher = "alefragnani";          name = "project-manager";          version = "10.5.1"; }
          { sha256 = "1dy7rf9w1mvk65fmxbvhbi5pf6cw2lwi07yhafq9x20c36g6dwyz";              publisher = "EditorConfig";         name = "EditorConfig";             version = "0.13.0"; }
          { sha256 = "0v1vqkcsnwwbb7xbpq7dqwg1qww5vqq7rc38qfk3p6b4xhaf8scm";              publisher = "hoovercj";             name = "vscode-power-mode";        version = "2.2.0"; }
          { sha256 = "65760067d935787109c7722388dc4e291348d9660a734543e6c30300e90ad2ec";  publisher = "aaron-bond";           name = "better-comments";          version = "2.0.3"; }
          { sha256 = "676da74bd756d70ecbf6d68edcf931cd003db4eaac3e340f635ed931a9bd3345";  publisher = "IBM";                  name = "output-colorizer";         version = "0.1.2"; }
          { sha256 = "16g5yf9bwmq9kdixhcqpyxhp4pvavdbc0klv7kq1q7n7apql9s2g";              publisher = "CoenraadS";            name = "bracket-pair-colorizer";   version = "1.0.16"; }

          { sha256 = "639987da2d55d524bc7e7e307e19593c2fd687ca4bc28f6852cdf4c231925882";  publisher = "justusadam";           name = "language-haskell";         version = "2.5.0"; }
          { sha256 = "1f73c624fc08fee94c2e4c68289cbcd584d13b8930638bbadd2dfc8ffcd2b67b";  publisher = "ms-vscode";            name = "Go";                       version = "0.9.2"; }
          { sha256 = "2001bda605de12ba56990da03ebe9011a75b72f704f798886fe5b787f119fbed";  publisher = "keyring";              name = "Lua";                      version = "0.0.9"; }
          #{ sha256 = "b20a163f36fcb06ce43a0e1252db2c42acef857c1e01309bcbfc114b561895d0";  publisher = "rust-lang";            name = "rust";                     version = "0.5.4"; }
          { sha256 = "02c2fff4f2956d4d7b53f259f60a0f6c205325952773ed18ba33d2c8bae8120e";  publisher = "kalitaalexey";         name = "vscode-rust";               version = "0.4.2"; }
          { sha256 = "82784f4f8e23acf08b1dcaab14fff9fcd73635b83af4e203d97bc71c44ceca42";  publisher = "mauve";                name = "terraform";                version = "1.3.9"; }
          { sha256 = "9d5f2b8d919cdae98733295cd9c95cd63b81ccd33dcdb0902465249398c32a64";  publisher = "vscoss";               name = "vscode-ansible";           version = "0.5.2"; }

          # Mobile App Development
          # { sha256 = "bc7099ebd35fd41c81cc66c411df9773d4cb273e40a3b94b43ff9640a83d335d";  publisher = "msjsdiag";             name = "cordova-tools";             version = "1.8.2"; }
          # { sha256 = "2a696cfd6f6d82102d1f3ef264d7be64044240236bf745cbaaf55b8e75bb8d6f";  publisher = "dbaeumer";             name = "jshint";                    version = "0.10.20"; }

          # Rails Development
          # { sha256 = "c1a57721025eb62d0a010fbe822f222828992fff8a37dff8d25da047fe17ab82";  publisher = "redhat";               name = "vscode-yaml";              version = "0.4.0"; }
          # { sha256 = "08lhzhrn6p0xwi0hcyp6lj9bvpfj87vr99klzsiy8ji7621dzql3";              publisher = "bungcip";              name = "better-toml";              version = "0.3.2"; }
          # { sha256 = "0y4q3srhds4wfy7nk3npd7vzngnwp4j07qq9g6cfd5cfkv4b5vid";              publisher = "michelemelluso";       name = "code-beautifier";          version = "2.2.1"; }
          # { sha256 = "4f0562f5ce9a41907c02bb373ec3e416214af3fb080c980476f1c4a6adf990ca";  publisher = "rebornix";             name = "Ruby";                     version = "0.22.3"; }
          # { sha256 = "05h5kc1362b3wpcqg5q5cmf415c9llp8h2zpbjym1b0w5za3h3mq";              publisher = "bung87";               name = "rails";                    version = "0.13.0"; }
          # { sha256 = "1qdq51pkilpxzjijp8szp90c56dalbd74f0qfz1aiin8yjkcw5sr";              publisher = "octref";               name = "vetur";                    version = "0.21.1"; }
          # { sha256 = "06lm5rmiy08d7q1iksb8rag464dz3d87gjxyl0d18n02wb9ldldq";              publisher = "bung87";               name = "vscode-gemfile";           version = "0.0.2"; }
          # { sha256 = "0k63dh7j6k5ci9y3wy4nyawr2l5rszw7lwqngayn0nkwxpdjd23x";              publisher = "sianglim";             name = "slim";                     version = "0.1.2"; }
          # { sha256 = "0dkf30dwjvfzb2v396lmaf9c1j8rnispr8fsjwbykdp3miwlqlca";              publisher = "castwide";             name = "solargraph";               version = "0.20.0"; }


          # Currently not used
          # { sha256 = "71f219a374e74caf255ea5735e5383f75bad946f7e81612ed12ed32bbd63ba27";  publisher = "mrmlnc";               name = "vscode-postcss-sorting";               version = "3.0.1"; }
          # { sha256 = "09dd3a62db1384b6e403eaa69a2e30e99e65b0d309176d296b18413df4fceb2a";  publisher = "vstirbu";              name = "vscode-mermaid-preview";    version = "0.11.2"; }
          # { sha256 = "ccc6ab26bb6e5b674a7d706d2682faad339db190e89bad3fb6c1c5e4fb1ebb14";  publisher = "idleberg";             name = "hopscotch";                 version = "0.2.2"; }
          # { sha256 = "b6c0ff6e3e4d8ecbde1af14edb49db33de3fd8ee1d4790bb371bbc5ae4ef03ea";  publisher = "arcticicestudio";      name = "nord-visual-studio-code";   version = "2.0.3"; }
          # { sha256 = "bfadcb068e5cd517e3947ee1fca0b809fdb178bf0cd693f6546b252f274798ab";  publisher = "ms-kubernetes-tools";  name = "vscode-kubernetes-tools";   version = "0.1.18"; }
          # { sha256 = "0deaf93257f662f9feb45ce383b056e00a90d5236f8996821820b868e85945c7";  publisher = "PeterJausovec";        name = "vscode-docker";             version = "0.6.2"; }
          # { sha256 = "f7390197f1afd979deb8c73476282d0df6b3cfa736c18e0aa813d85562bd426a";  publisher = "fatihacet";            name = "gitlab-workflow";           version = "2.0.1"; }
        ];

      })
    ];
  }


