# Do not edit. bazel-deps autogenerates this file from dependencies.yml.
java_import_external = None
scala_import_external = None
def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_gigahorse_core_2_12",
                "name": "jar/twirl_com/eed3si9n/gigahorse_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_typesafe_ssl_config_core_2_12",
                    "@twirl_org_reactivestreams_reactive_streams",
                    "@twirl_org_slf4j_slf4j_api"
                ],
                "jar_sha256": "9f198e77608a915797e9d4b5c91eedae621cecc3f25f2a551a3fa5d6bc678aa4",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-core_2.12/0.3.0/gigahorse-core_2.12-0.3.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_gigahorse_core_2_12",
                "srcjar_sha256": "31a6c5d8599e7bd4a9c1d38e56764c80695970ba045d2e9040dc98929b22f52a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-core_2.12/0.3.0/gigahorse-core_2.12-0.3.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_gigahorse_okhttp_2_12",
                "name": "jar/twirl_com/eed3si9n/gigahorse_okhttp_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_eed3si9n_gigahorse_core_2_12",
                    "@twirl_com_squareup_okhttp3_okhttp"
                ],
                "jar_sha256": "5cf8e8bb9d90a08aa851ac066f378f83710af7823d788f837dc64f22cebcbbdf",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-okhttp_2.12/0.3.0/gigahorse-okhttp_2.12-0.3.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_gigahorse_okhttp_2_12",
                "srcjar_sha256": "e991af1bb7150ee6341d4fbf0305b173cf6e0af81076cbccb010a6581019ea09",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-okhttp_2.12/0.3.0/gigahorse-okhttp_2.12-0.3.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_shaded_scalajson_2_12",
                "name": "jar/twirl_com/eed3si9n/shaded_scalajson_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "264051c330fca00fe57d4b4cb767c1f6b359a5603f79f63562832125c7055a40",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.12/1.0.0-M4/shaded-scalajson_2.12-1.0.0-M4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_shaded_scalajson_2_12",
                "srcjar_sha256": "73400e3c769019b0ea5f5f5f94e61a1ebbc3d9b6667c455524b15967a0f4e550",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.12/1.0.0-M4/shaded-scalajson_2.12-1.0.0-M4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_sjson_new_core_2_12",
                "name": "jar/twirl_com/eed3si9n/sjson_new_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0c67aa883ff2e703559d723dbab04e6510f0f541f5629426bf199c4719295830",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-core_2.12/0.8.2/sjson-new-core_2.12-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_sjson_new_core_2_12",
                "srcjar_sha256": "985acefd13801f50d51e3d45c999c8eab4e4cc32a371deb733e884da20ff9225",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-core_2.12/0.8.2/sjson-new-core_2.12-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_sjson_new_murmurhash_2_12",
                "name": "jar/twirl_com/eed3si9n/sjson_new_murmurhash_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c8e622c56b1c48b384d95e8ebabaff80e1bed48aef50251a4abe613238593b93",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-murmurhash_2.12/0.8.2/sjson-new-murmurhash_2.12-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_sjson_new_murmurhash_2_12",
                "srcjar_sha256": "19adc4fb08a1a59151a928eea65e4417f222618f33248295eaacb1677a906295",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-murmurhash_2.12/0.8.2/sjson-new-murmurhash_2.12-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_eed3si9n_sjson_new_scalajson_2_12",
                "name": "jar/twirl_com/eed3si9n/sjson_new_scalajson_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_eed3si9n_shaded_scalajson_2_12",
                    "@twirl_org_spire_math_jawn_parser_2_12"
                ],
                "jar_sha256": "a72ea3b3331d689e5aff14edab9b33319d3d0140e9512b87568e6311786c849d",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.12/0.8.2/sjson-new-scalajson_2.12-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_eed3si9n_sjson_new_scalajson_2_12",
                "srcjar_sha256": "820565cc1911a8e1d88789344229f92fe3dcfd747793f18fcf6e120fbe15dfd3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.12/0.8.2/sjson-new-scalajson_2.12-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_github_scopt_scopt_2_12",
                "name": "jar/twirl_com/github/scopt/scopt_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_lang_scala_library" ],
                "jar_sha256": "1105ff2819f267e06b9a84843231a9fd7a69817c49e5d67167cb601e47ce2c56",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.12/3.7.0/scopt_2.12-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_github_scopt_scopt_2_12",
                "srcjar_sha256": "5d642a8f96c9e0243d15badd519ffb2a7f2786ce70d5e5c21003bb9b70ff507d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.12/3.7.0/scopt_2.12-3.7.0-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_google_protobuf_protobuf_java",
                "name": "jar/twirl_com/google/protobuf/protobuf_java"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "90b82eeb94e7aba6f5053cc3d42f73da3ed188f4c6bc73a412d6fb3a12d97444",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/protobuf/protobuf-java/3.3.1/protobuf-java-3.3.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_google_protobuf_protobuf_java",
                "srcjar_sha256": "a5f40b040e76982c8ce70758acdabd063be8803f879a2a0b8a86f2a57feb8d3a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/protobuf/protobuf-java/3.3.1/protobuf-java-3.3.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_jcraft_jsch",
                "name": "jar/twirl_com/jcraft/jsch"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "92eb273a3316762478fdd4fe03a0ce1842c56f496c9c12fe1235db80450e1fdb",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/jcraft/jsch/0.1.54/jsch-0.1.54.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_jcraft_jsch",
                "srcjar_sha256": "49d021dd58f6b455046a07331a68a5e647df354d7f6961b73df298203c43f44a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/jcraft/jsch/0.1.54/jsch-0.1.54-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_lihaoyi_fastparse_utils_2_12",
                "name": "jar/twirl_com/lihaoyi/fastparse_utils_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0da40d3c89d3f7009ac2f6e32b11d8cdd379b40a2f09ce08669b4695f558e101",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse-utils_2.12/0.4.2/fastparse-utils_2.12-0.4.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_lihaoyi_fastparse_utils_2_12",
                "srcjar_sha256": "1eb227bc9659ce84b40d2d258c9ea3e8b8246f362241f43422266e05cabc902d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse-utils_2.12/0.4.2/fastparse-utils_2.12-0.4.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_lihaoyi_fastparse_2_12",
                "name": "jar/twirl_com/lihaoyi/fastparse_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_lihaoyi_fastparse_utils_2_12",
                    "@twirl_com_lihaoyi_sourcecode_2_12"
                ],
                "jar_sha256": "43f57787179e902137167ba107e665272a0764f1addb3f452136f15bad5b21a8",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse_2.12/0.4.2/fastparse_2.12-0.4.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_lihaoyi_fastparse_2_12",
                "srcjar_sha256": "8e242feb1704b8483969c726056c46e5ba2bb659c943d336ae3948b3a507707d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse_2.12/0.4.2/fastparse_2.12-0.4.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_lihaoyi_sourcecode_2_12",
                "name": "jar/twirl_com/lihaoyi/sourcecode_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "3ba3aca0d46496a3304798db8c8d79eedbdf29846b988a0a65207cc13408deca",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/sourcecode_2.12/0.1.3/sourcecode_2.12-0.1.3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_lihaoyi_sourcecode_2_12",
                "srcjar_sha256": "5e20864291d9ef92841282606d99434b7af938619689218180717cb72851f7da",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/sourcecode_2.12/0.1.3/sourcecode_2.12-0.1.3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_lmax_disruptor",
                "name": "jar/twirl_com/lmax/disruptor"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "8c5df12a17f614464ccacc9b7c4935e5f16e694b7788e714cde4b7587d5dd266",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lmax/disruptor/3.3.6/disruptor-3.3.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_lmax_disruptor",
                "srcjar_sha256": "4b0640f3a400e434419ed772339eb8f0578a571132f1cda7bbe3eb910356e1a0",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lmax/disruptor/3.3.6/disruptor-3.3.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_squareup_okhttp3_okhttp_urlconnection",
                "name": "jar/twirl_com/squareup/okhttp3/okhttp_urlconnection"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "4631582b6818b6c8bdb0bca13b3ba126d2787969d33693d0f3912f1225fde3ec",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp-urlconnection/3.7.0/okhttp-urlconnection-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_squareup_okhttp3_okhttp_urlconnection",
                "srcjar_sha256": "f9526df9ab982e83fd184ad55d3c1b46a027d840108de9c55811d973c33013dc",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp-urlconnection/3.7.0/okhttp-urlconnection-3.7.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_squareup_okhttp3_okhttp",
                "name": "jar/twirl_com/squareup/okhttp3/okhttp"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_com_squareup_okio_okio" ],
                "jar_sha256": "f55abda036da75e1af45bd43b9dfa79b2a3d90905be9cb38687c6621597a8165",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp/3.7.0/okhttp-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_squareup_okhttp3_okhttp",
                "srcjar_sha256": "a05aec7722b6b96354a49b8a225be6bb7c86609ff3c358c45d3a5a8e4805c544",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp/3.7.0/okhttp-3.7.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_squareup_okio_okio",
                "name": "jar/twirl_com/squareup/okio/okio"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "bfe7dfe483c37137966a1690f0c7d0b448ba217902c1fed202aaffdbba3291ae",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okio/okio/1.12.0/okio-1.12.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_squareup_okio_okio",
                "srcjar_sha256": "6b7aca5e64927cea1a51b7200b1b5378b15fb1067330b628f987febef25c21c9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okio/okio/1.12.0/okio-1.12.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_swoval_apple_file_events",
                "name": "jar/twirl_com/swoval/apple_file_events"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "7700198d313795f79a2f3ebece8ab85596d028fd8c454be4f85bab1c9d07be8a",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/swoval/apple-file-events/1.3.2/apple-file-events-1.3.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_swoval_apple_file_events",
                "srcjar_sha256": "aabecf2ca251c1c1d39d001a008547d809d910ebac9ccb1d9337e5a092d89cd7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/swoval/apple-file-events/1.3.2/apple-file-events-1.3.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_trueaccord_lenses_lenses_2_12",
                "name": "jar/twirl_com/trueaccord/lenses/lenses_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "7cedcbc3125ad3f156466d6f3aec24b7fe6954cdc54a426ea089b4a46cd84c1c",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/lenses/lenses_2.12/0.4.12/lenses_2.12-0.4.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_trueaccord_lenses_lenses_2_12",
                "srcjar_sha256": "2eed83e6a00d9dbfdcb367a28ca4a7d2080b0adb1dbabfe4892bef79e8b39aef",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/lenses/lenses_2.12/0.4.12/lenses_2.12-0.4.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_trueaccord_scalapb_scalapb_runtime_2_12",
                "name": "jar/twirl_com/trueaccord/scalapb/scalapb_runtime_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_google_protobuf_protobuf_java",
                    "@twirl_com_lihaoyi_fastparse_2_12",
                    "@twirl_com_trueaccord_lenses_lenses_2_12"
                ],
                "jar_sha256": "7921c157a5d0c4852d6ee99c728cf77c148ce6d36280dfcb6b58d1fa90d17f8d",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/scalapb/scalapb-runtime_2.12/0.6.0/scalapb-runtime_2.12-0.6.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_trueaccord_scalapb_scalapb_runtime_2_12",
                "srcjar_sha256": "ed9b75d56698da090ead2ee1f464157225a4c6117d4adb31d2947809fb1f4da8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/scalapb/scalapb-runtime_2.12/0.6.0/scalapb-runtime_2.12-0.6.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_api_2_12",
                "name": "jar/twirl_com/typesafe/play/twirl_api_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "a49f55199ad9e3b19a5dc51c812edca5d270ee8ca7d763a793a0e462fc3dbf61",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.2.1/twirl-api_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_api_2_12",
                "srcjar_sha256": "37115905a4a62ff85f1cb324407c672dbb5710a7b938c724fad418a31317d01a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.2.1/twirl-api_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_compiler_2_12",
                "name": "jar/twirl_com/typesafe/play/twirl_compiler_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_typesafe_play_twirl_api_2_12",
                    "@twirl_com_typesafe_play_twirl_parser_2_12",
                    "@twirl_org_scala_lang_scala_compiler",
                    "@twirl_org_scala_lang_scala_library"
                ],
                "jar_sha256": "ca7ef64727d5f12bb111ae9a42f068745a3db736f8f252e8dc15308533d1445a",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-compiler_2.12/1.2.1/twirl-compiler_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_compiler_2_12",
                "srcjar_sha256": "b4ae29960bc2080f42ca5bc2b7dc52ad542c1de2901b8a0a476ec0109e5f6e92",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-compiler_2.12/1.2.1/twirl-compiler_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_play_twirl_parser_2_12",
                "name": "jar/twirl_com/typesafe/play/twirl_parser_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "38787b61b449c693251243f65a9c20c57b8ecff6be8336403084072cdf3cb504",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-parser_2.12/1.2.1/twirl-parser_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_play_twirl_parser_2_12",
                "srcjar_sha256": "6ff4991cf5a5f775f9237eca5d8e905e51f1ba1abffd51ac1a7620e10ac67c04",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-parser_2.12/1.2.1/twirl-parser_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_config",
                "name": "jar/twirl_com/typesafe/config"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "56f2c2e8acb95fb1e358b1e3faef2d565782c2a528747b01af8dd8e8bd87bd60",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.2.0/config-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_config",
                "srcjar_sha256": "1acf655899a53e9acc577cb9d47e466095d83532cdfd1b17dd8e6f5c1c02642c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.2.0/config-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_com_typesafe_ssl_config_core_2_12",
                "name": "jar/twirl_com/typesafe/ssl_config_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_com_typesafe_config" ],
                "jar_sha256": "cf144ec0adeb7f97da59542910ef18471f03fde2e174148e711b7f071155c7e4",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.12/0.2.2/ssl-config-core_2.12-0.2.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_com_typesafe_ssl_config_core_2_12",
                "srcjar_sha256": "6b8b6f4135e7bcce10a8507b7b9f8a70982e71f34926b9f2118706f82793b410",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.12/0.2.2/ssl-config-core_2.12-0.2.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_jline_jline",
                "name": "jar/twirl_jline/jline"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cb489eb7caf57811f01b7ac9d1fb8175ee1d2086627cc69f524e7d68f5f67982",
                "jar_urls": [
                    "http://central.maven.org/maven2/jline/jline/2.14.4/jline-2.14.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_jline_jline",
                "srcjar_sha256": "521af91089abf9f6b154b42f32e99dca3d824fb8e22a844f78309f0fab5d1343",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/jline/jline/2.14.4/jline-2.14.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_net_java_dev_jna_jna_platform",
                "name": "jar/twirl_net/java/dev/jna/jna_platform"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "68ee6431c6c07dda48deaa2627c56beeea0dec5927fe7848983e06f7a6a76a08",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.5.0/jna-platform-4.5.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_net_java_dev_jna_jna_platform",
                "srcjar_sha256": "c0d41cc08b93646f90495bf850105dc9af1116169868b93589366c689eb5ddee",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.5.0/jna-platform-4.5.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_net_java_dev_jna_jna",
                "name": "jar/twirl_net/java/dev/jna/jna"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "617a8d75f66a57296255a13654a99f10f72f0964336e352211247ed046da3e94",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.5.0/jna-4.5.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_net_java_dev_jna_jna",
                "srcjar_sha256": "e4da62978d75a5f47641d6c3548a6859c193fad8c5d0bc95a5f049d8ec1a0f79",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.5.0/jna-4.5.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_apache_logging_log4j_log4j_api",
                "name": "jar/twirl_org/apache/logging/log4j/log4j_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1205ab764b1326f7d96d99baa4a4e12614599bf3d735790947748ee116511fa2",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_apache_logging_log4j_log4j_api",
                "srcjar_sha256": "453201e25c223bacfc58e47262390fa2879dfe095c6d883dc913667917665ceb",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_apache_logging_log4j_log4j_core",
                "name": "jar/twirl_org/apache/logging/log4j/log4j_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "815a73e20e90a413662eefe8594414684df3d5723edcd76070e1a5aee864616e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_apache_logging_log4j_log4j_core",
                "srcjar_sha256": "efb8bd06659beda231375b72fb38f44d884b7d086f34e050204ffc8efe0cf6c2",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_reactivestreams_reactive_streams",
                "name": "jar/twirl_org/reactivestreams/reactive_streams"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ef867702a614b96eb6c64fb65a8f5e14bdfcabbc1ae056f78a1643f7b79ca0eb",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_reactivestreams_reactive_streams",
                "srcjar_sha256": "7e673b0c8b0ac51bdef8655cacf7804fb9791c47e71161a36c94738d55eefea8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_modules_scala_parser_combinators_2_12",
                "name": "jar/twirl_org/scala_lang/modules/scala_parser_combinators_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_lang_scala_library" ],
                "jar_sha256": "102f2a13efae9486cb4fc01aa4eb92c0543dbd8403f825041746c689f80556e3",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.12/1.1.0/scala-parser-combinators_2.12-1.1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_modules_scala_parser_combinators_2_12",
                "srcjar_sha256": "08d173ec107691c45a2cddf698df21600dea1c720ef3b0dbeb84b42d133d7290",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.12/1.1.0/scala-parser-combinators_2.12-1.1.0-sources.jar"
                ]
            },
            "lang": "scala"
        },
        # duplicates in org.scala-lang.modules:scala-xml_2.12 promoted to 1.0.6
        # - org.scala-lang:scala-compiler:2.12.4 wanted version 1.0.6
        # - org.scala-sbt:sbinary_2.12:0.4.4 wanted version 1.0.5
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_modules_scala_xml_2_12",
                "name": "jar/twirl_org/scala_lang/modules/scala_xml_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "7cc3b6ceb56e879cb977e8e043f4bfe2e062f78795efd7efa09f85003cb3230a",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.12/1.0.6/scala-xml_2.12-1.0.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_modules_scala_xml_2_12",
                "srcjar_sha256": "a7e8aac79394df396afda98b35537791809d815ce15ab2224f7d31e50c753922",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.12/1.0.6/scala-xml_2.12-1.0.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang:scala-compiler fixed to 2.12.4
        # - com.typesafe.play:twirl-compiler_2.12:1.2.1 wanted version 2.12.0
        # - org.scala-sbt:zinc-classpath_2.12:1.2.1 wanted version 2.12.6
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_scala_compiler",
                "name": "jar/twirl_org/scala_lang/scala_compiler"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_org_scala_lang_modules_scala_xml_2_12",
                    "@twirl_org_scala_lang_scala_library",
                    "@twirl_org_scala_lang_scala_reflect"
                ],
                "jar_sha256": "8b681302aac584f7234547eed04d2beeeb4a4f00032220e29d40943be6906a01",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.12.4/scala-compiler-2.12.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_scala_compiler",
                "srcjar_sha256": "675d1e5e163f4db1f8bde9b20ed7b30d5e6e635e18855cb0e4f3b5e672a88512",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.12.4/scala-compiler-2.12.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang:scala-library fixed to 2.12.4
        # - com.github.scopt:scopt_2.12:3.7.0 wanted version 2.12.3
        # - com.typesafe.play:twirl-compiler_2.12:1.2.1 wanted version 2.12.0
        # - org.scala-lang.modules:scala-parser-combinators_2.12:1.1.0 wanted version 2.12.4
        # - org.scala-lang:scala-compiler:2.12.4 wanted version 2.12.4
        # - org.scala-lang:scala-reflect:2.12.4 wanted version 2.12.4
        # - org.scala-sbt:zinc_2.12:1.2.1 wanted version 2.12.6
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_scala_library",
                "name": "jar/twirl_org/scala_lang/scala_library"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "17824fcee4d3f46cfaa4da84ebad4f58496426c2b9bc9e341f812ab23a667d5d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.12.4/scala-library-2.12.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_scala_library",
                "srcjar_sha256": "b9c34cf968a0e348ecec32837797a794ffeade2fe016323474fe756cb7d74042",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.12.4/scala-library-2.12.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang:scala-reflect fixed to 2.12.4
        # - org.scala-lang:scala-compiler:2.12.4 wanted version 2.12.4
        # - org.scala-sbt:util-logging_2.12:1.2.0 wanted version 2.12.6
        {
            "bind_args": {
                "actual": "@twirl_org_scala_lang_scala_reflect",
                "name": "jar/twirl_org/scala_lang/scala_reflect"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_lang_scala_library" ],
                "jar_sha256": "ea70fe0e550e24d23fc52a18963b2be9c3b24283f4cb18b98327eb72746567cc",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.12.4/scala-reflect-2.12.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_lang_scala_reflect",
                "srcjar_sha256": "7b4dc73dc3cb46ac9ac948a0c231ccd989bed6cefb137c302a8ec8d6811e8148",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.12.4/scala-reflect-2.12.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_compiler_interface",
                "name": "jar/twirl_org/scala_sbt/compiler_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_sbt_util_interface" ],
                "jar_sha256": "25c7fd6171a58775caa1b80170d0a2256ab57b2eb65022123ebcfc4ea564d961",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/compiler-interface/1.2.1/compiler-interface-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_compiler_interface",
                "srcjar_sha256": "bd4153820e556420eda1415df90236ee69662a7490849c0bbaf99019b360c79e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/compiler-interface/1.2.1/compiler-interface-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_io_2_12",
                "name": "jar/twirl_org/scala_sbt/io_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_swoval_apple_file_events",
                    "@twirl_net_java_dev_jna_jna",
                    "@twirl_net_java_dev_jna_jna_platform"
                ],
                "jar_sha256": "270b67412cf3e5a81f036bfe26bf098434d68f9ac427414996479847ce50fc31",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/io_2.12/1.2.0/io_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_io_2_12",
                "srcjar_sha256": "411f890c43658fcd770680a48f084cc4de6a9a98a31381fc5ca8041936459de6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/io_2.12/1.2.0/io_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_launcher_interface",
                "name": "jar/twirl_org/scala_sbt/launcher_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "11ab8f0e2c035c90f019e4f5780ee57de978b7018d34e8f020eb88aa8b14af25",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/launcher-interface/1.0.0/launcher-interface-1.0.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_launcher_interface",
                "srcjar_sha256": "ca2de13465aee529ebed512ecc1a214e521f436e9a2219042777b32a3cfcf287",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/launcher-interface/1.0.0/launcher-interface-1.0.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_librarymanagement_core_2_12",
                "name": "jar/twirl_org/scala_sbt/librarymanagement_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_eed3si9n_gigahorse_okhttp_2_12",
                    "@twirl_com_jcraft_jsch",
                    "@twirl_com_squareup_okhttp3_okhttp_urlconnection",
                    "@twirl_org_scala_sbt_util_cache_2_12",
                    "@twirl_org_scala_sbt_util_position_2_12"
                ],
                "jar_sha256": "c0b5fc0d7a32063a4eb61b9d80c3bf8b60490b620c5aed984d0e041563a13947",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/librarymanagement-core_2.12/1.2.0/librarymanagement-core_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_librarymanagement_core_2_12",
                "srcjar_sha256": "76257c211485653f4e3b5d59867b8aec5cd7af347b35b176e1d926d127831a62",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/librarymanagement-core_2.12/1.2.0/librarymanagement-core_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_sbinary_2_12",
                "name": "jar/twirl_org/scala_sbt/sbinary_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_lang_modules_scala_xml_2_12" ],
                "jar_sha256": "24a7a488a6992b6ab4d8e78b170f5fbc02ef13eadada88851fd41cb2ccfa802a",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/sbinary_2.12/0.4.4/sbinary_2.12-0.4.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_sbinary_2_12",
                "srcjar_sha256": "1bace3a75fa2d5d73c0ea7d3be8107eec76fddeedba301af91fc6c99c6a774c9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/sbinary_2.12/0.4.4/sbinary_2.12-0.4.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_test_interface",
                "name": "jar/twirl_org/scala_sbt/test_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "15f70b38bb95f3002fec9aea54030f19bb4ecfbad64c67424b5e5fea09cd749e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_test_interface",
                "srcjar_sha256": "c314491c9df4f0bd9dd125ef1d51228d70bd466ee57848df1cd1b96aea18a5ad",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_cache_2_12",
                "name": "jar/twirl_org/scala_sbt/util_cache_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_com_eed3si9n_sjson_new_murmurhash_2_12" ],
                "jar_sha256": "622fd806450b232442172b32ff76bc547f015ae8935950c90d336f8920dae07f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-cache_2.12/1.2.0/util-cache_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_cache_2_12",
                "srcjar_sha256": "dbb00a2a92d17d5c01e5eaf0e57bdfedf58d7f5b67a974641e6a026b38d14408",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-cache_2.12/1.2.0/util-cache_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_control_2_12",
                "name": "jar/twirl_org/scala_sbt/util_control_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "87f8f8decb351e50415b5fabb7aa11a110e29bf0a31a4ba0e8662987cb9be580",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-control_2.12/1.2.0/util-control_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_control_2_12",
                "srcjar_sha256": "220fc66fb3e7c5c18237e9d308fd3c2f3e988230ee2c4994a46ca09e2cab9597",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-control_2.12/1.2.0/util-control_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_interface",
                "name": "jar/twirl_org/scala_sbt/util_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "444bc23ec31e30ed76a34cd7e142c1a7e4fa84b9d838945b46c8f6f780a798c6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-interface/1.2.0/util-interface-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_interface",
                "srcjar_sha256": "94aa85d25647d83e83b31fb55494be70927989542d025608d6eb5650529c738a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-interface/1.2.0/util-interface-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_logging_2_12",
                "name": "jar/twirl_org/scala_sbt/util_logging_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_eed3si9n_sjson_new_core_2_12",
                    "@twirl_com_eed3si9n_sjson_new_scalajson_2_12",
                    "@twirl_com_lmax_disruptor",
                    "@twirl_jline_jline",
                    "@twirl_org_apache_logging_log4j_log4j_api",
                    "@twirl_org_apache_logging_log4j_log4j_core",
                    "@twirl_org_scala_lang_scala_reflect"
                ],
                "jar_sha256": "d3eddf8ab0ed3cfa4065b0f2148babbe763141c034a443cdaeddc62d294a5b92",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-logging_2.12/1.2.0/util-logging_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_logging_2_12",
                "srcjar_sha256": "369ce35ccf5dbcb8c24fc097144bb7292c0a7716250b327376a9b291dad8e992",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-logging_2.12/1.2.0/util-logging_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_position_2_12",
                "name": "jar/twirl_org/scala_sbt/util_position_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1197b8993602f157b6aea90027b6e579ed7fd5d98ce8a16c089709ed705cf747",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-position_2.12/1.2.0/util-position_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_position_2_12",
                "srcjar_sha256": "8170807414a6fa87f557455ac223d650bf5cf0d672c2c028acd0f42f08ebb702",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-position_2.12/1.2.0/util-position_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_util_relation_2_12",
                "name": "jar/twirl_org/scala_sbt/util_relation_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "dd7c1bd57e69032f30c16c4efbd4adcb9cb76374200e37bc39f6b4748cfd6235",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-relation_2.12/1.2.0/util-relation_2.12-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_util_relation_2_12",
                "srcjar_sha256": "920f15393ef0869645846b571ebddfc3173b399aa4c45cd528298e886e52222b",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-relation_2.12/1.2.0/util-relation_2.12-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_apiinfo_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_apiinfo_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "4248a9ce6ea0f7d217a05fe18407fad4bcbcda5c433cc0c328b9aa46e24e81b2",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.12/1.2.1/zinc-apiinfo_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_apiinfo_2_12",
                "srcjar_sha256": "9388d0ef0257a2d78acddac5ed43faf1950612fb7f4cbecce6d4b4045d6e5521",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.12/1.2.1/zinc-apiinfo_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_classfile_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_classfile_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f15787066975b9da2bdca2b57b2c98c93a01e2d760f35ce040f61e5172b9ad3b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classfile_2.12/1.2.1/zinc-classfile_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_classfile_2_12",
                "srcjar_sha256": "e34d26f7f2f3300eb05402030b165ab50c29bb3a90fd7ec7c2e6b5782319c2cf",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classfile_2.12/1.2.1/zinc-classfile_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_classpath_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_classpath_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@twirl_org_scala_lang_scala_compiler" ],
                "jar_sha256": "f955666b8b579bd0ab4c4c9810a25574aaf376976d3365c8810bac448a2f3e59",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classpath_2.12/1.2.1/zinc-classpath_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_classpath_2_12",
                "srcjar_sha256": "c46f07e58e646914d8aa9cfdb185aca6b6eaf325c8eaffbd6bf779b92589eff7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classpath_2.12/1.2.1/zinc-classpath_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_compile_core_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_compile_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_org_scala_lang_modules_scala_parser_combinators_2_12",
                    "@twirl_org_scala_sbt_launcher_interface",
                    "@twirl_org_scala_sbt_util_control_2_12"
                ],
                "jar_sha256": "05c9f2b23350420de4f9cf08f36c98fdd1521a03776d32bb585160980a89de07",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.12/1.2.1/zinc-compile-core_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_compile_core_2_12",
                "srcjar_sha256": "32aca2964bf88deaa74a0c5301c63229775057636029d0c30b6755c5cf649678",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.12/1.2.1/zinc-compile-core_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_core_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_org_scala_sbt_compiler_interface",
                    "@twirl_org_scala_sbt_io_2_12",
                    "@twirl_org_scala_sbt_util_logging_2_12",
                    "@twirl_org_scala_sbt_util_relation_2_12",
                    "@twirl_org_scala_sbt_zinc_apiinfo_2_12",
                    "@twirl_org_scala_sbt_zinc_classpath_2_12"
                ],
                "jar_sha256": "503c2a362be203769eb117d25be022f83a9f1160644b8db3b43c05b40f829eea",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-core_2.12/1.2.1/zinc-core_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_core_2_12",
                "srcjar_sha256": "14fe32caa6e5dc0f5128cc9a525807015f45c9535ed3d11fd090cccc0c0f5ae4",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-core_2.12/1.2.1/zinc-core_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_ivy_integration_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_ivy_integration_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_org_scala_sbt_librarymanagement_core_2_12"
                ],
                "jar_sha256": "3f3d4997b0f3ffe0cc6e8b775135fefeb5ec3a3c03d1157c80f629ae2149c695",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-ivy-integration_2.12/1.2.1/zinc-ivy-integration_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_ivy_integration_2_12",
                "srcjar_sha256": "e15b18819da5f9e920b257ee8771d3ea4fcc2e90af26b8254f9708799ce1b69c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-ivy-integration_2.12/1.2.1/zinc-ivy-integration_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_persist_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_persist_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_com_trueaccord_scalapb_scalapb_runtime_2_12",
                    "@twirl_org_scala_sbt_sbinary_2_12"
                ],
                "jar_sha256": "6526d2d544da9228b5626cef766b70d9d1f365e671213e214d68b6b831818fbc",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-persist_2.12/1.2.1/zinc-persist_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_persist_2_12",
                "srcjar_sha256": "8a2f0a6fb84cb0da520559f6f550026d8546e0b6e3b807bbebcb0ce811ff8019",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-persist_2.12/1.2.1/zinc-persist_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_scala_sbt_zinc_2_12",
                "name": "jar/twirl_org/scala_sbt/zinc_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@twirl_org_scala_lang_scala_library",
                    "@twirl_org_scala_sbt_zinc_classfile_2_12",
                    "@twirl_org_scala_sbt_zinc_compile_core_2_12",
                    "@twirl_org_scala_sbt_zinc_core_2_12",
                    "@twirl_org_scala_sbt_zinc_ivy_integration_2_12",
                    "@twirl_org_scala_sbt_zinc_persist_2_12"
                ],
                "jar_sha256": "6c6351556cc459f6ee59853de74cac37b0482b37bedb5e8189b6f48095e7c23d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc_2.12/1.2.1/zinc_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_scala_sbt_zinc_2_12",
                "srcjar_sha256": "7a176f1d0eb05810a8b450b93dbf81165e63a2b4de92a4a195e24d59196376c2",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc_2.12/1.2.1/zinc_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_slf4j_slf4j_api",
                "name": "jar/twirl_org/slf4j/slf4j_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "18c4a0095d5c1da6b817592e767bb23d29dd2f560ad74df75ff3961dbde25b79",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_slf4j_slf4j_api",
                "srcjar_sha256": "c4bc93180a4f0aceec3b057a2514abe04a79f06c174bbed910a2afb227b79366",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@twirl_org_spire_math_jawn_parser_2_12",
                "name": "jar/twirl_org/spire_math/jawn_parser_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c617fdde8c5b7646b1bedc4f6f565e85aa83b157ea93977fcdc4056b823aadb2",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/jawn-parser_2.12/0.10.4/jawn-parser_2.12-0.10.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "twirl_org_spire_math_jawn_parser_2_12",
                "srcjar_sha256": "7601c166db3328c7f63a6388f637ddaf567448b622df167666526b5daefb751c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/jawn-parser_2.12/0.10.4/jawn-parser_2.12-0.10.4-sources.jar"
                ]
            },
            "lang": "java"
        }
    ]
    