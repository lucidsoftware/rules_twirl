# Do not edit. bazel-deps autogenerates this file from dependencies.yml.
java_import_external = None
scala_import_external = None
#load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_import_external", "java_import_external")

def declare_maven(hash):
    lang = hash.pop("lang")
    import_args = hash["import_args"]

    # TODO: Change this back once java_import works again
    # if lang == "java":
    if False:
        java_import_external(**import_args)
    else:
    #elif lang.startswith("scala"):
        if "testonly_" in import_args:
            import_args.pop("testonly_")
        if "neverlink" in import_args:
            import_args.pop("neverlink")

        scala_import_external(**import_args)

    native.bind(**hash["bind_args"])

def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@twirl_com_github_scopt_scopt_2_11",
                "name": "jar/twirl_com/github/scopt/scopt_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@scala_scala_library//jar" ],
                "jar_sha256": "cc05b6ac379f9b45b6d832b7be556312039f3d57928b62190d3dcd04f34470b5",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_github_scopt_scopt_2_11",
                "srcjar_sha256": "1c9111bafb55ec192d04898123199e51440e1633118b112d0c14a611491805ef",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_api_2_11",
                "name": "jar/twirl_com/typesafe/play/twirl_api_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_apache_commons_commons_lang3" ],
                "jar_sha256": "8cbc373640e2dab269bc0d4eada8fd47e9a06bb573ea9b7748eada58188547fa",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_api_2_11",
                "srcjar_sha256": "aa59cc9ff4a00e95330f8e8fcb4d4489d168bde4c2c433e5741428d62971d5e8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_compiler_2_11",
                "name": "jar/twirl_com/typesafe/play/twirl_compiler_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@scala_scala_compiler//jar",
                    "@scala_scala_library//jar",
                    "@twirl_com_typesafe_play_twirl_api_2_11",
                    "@twirl_com_typesafe_play_twirl_parser_2_11"
                ],
                "jar_sha256": "ec5dd61fb881fbfef487d52da9ac580bc05bff7c698c2daff16066a2250b552d",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-compiler_2.11/1.1.1/twirl-compiler_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_compiler_2_11",
                "srcjar_sha256": "9d32e2f928c22574747c668a44eebbfd30efcf6bf993a9de95292f684b648044",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-compiler_2.11/1.1.1/twirl-compiler_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_parser_2_11",
                "name": "jar/twirl_com/typesafe/play/twirl_parser_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "730d27857a65e9d759154a8736716135bcc95d69a810ca2ee225f2d0763842cf",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-parser_2.11/1.1.1/twirl-parser_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_parser_2_11",
                "srcjar_sha256": "b5a4cd6554a5a14c414bf86b3dae33816ec32a0aaa5677874f30e2f4d6c30af5",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-parser_2.11/1.1.1/twirl-parser_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_apache_commons_commons_lang3",
                "name": "jar/twirl_org/apache/commons/commons_lang3"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_apache_commons_commons_lang3",
                "srcjar_sha256": "4709f16a9e0f8fd83ae155083d63044e23045aac8f6f0183a2db09f492491b12",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_modules_scala_parser_combinators_2_11",
                "name": "jar/twirl_org/scala_lang/modules/scala_parser_combinators_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@scala_scala_library//jar" ],
                "jar_sha256": "5baaad7be5c6fc8142a31ab003f7ee797e488ee137d48df5d9c3c2b3fb0c5bc6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.1.0/scala-parser-combinators_2.11-1.1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_modules_scala_parser_combinators_2_11",
                "srcjar_sha256": "15ffea5d33cb831220573c7556ad36653599b92abebf7c5f90b7b9fc5cc275fc",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.1.0/scala-parser-combinators_2.11-1.1.0-sources.jar"
                ]
            },
            "lang": "scala"
        }
    ]
def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)

    