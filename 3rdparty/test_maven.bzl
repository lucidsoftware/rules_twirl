# Do not edit. bazel-deps autogenerates this file from test-dependencies.yml.
java_import_external = None
scala_import_external = None
def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@com_typesafe_play_twirl_api_2_12",
                "name": "jar/com/typesafe/play/twirl_api_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_scala_lang_modules_scala_xml_2_12",
                    "@org_scala_lang_scala_library"
                ],
                "jar_sha256": "a49f55199ad9e3b19a5dc51c812edca5d270ee8ca7d763a793a0e462fc3dbf61",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.2.1/twirl-api_2.12-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_twirl_api_2_12",
                "srcjar_sha256": "37115905a4a62ff85f1cb324407c672dbb5710a7b938c724fad418a31317d01a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.2.1/twirl-api_2.12-1.2.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@org_scala_lang_modules_scala_parser_combinators_2_12",
                "name": "jar/org/scala_lang/modules/scala_parser_combinators_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c9dd59ef2231b73e2a415885bd9c5e4f9e593cd84c0d5a104d6722ce0294349d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.12/1.0.6/scala-parser-combinators_2.12-1.0.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_modules_scala_parser_combinators_2_12",
                "srcjar_sha256": "3735bad5882255d7561656a035129098c234fa17cbef517995c9f87fba7ab2d0",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.12/1.0.6/scala-parser-combinators_2.12-1.0.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang.modules:scala-xml_2.12 promoted to 1.0.6
        # - com.typesafe.play:twirl-api_2.12:1.2.1 wanted version 1.0.5
        # - org.specs2:specs2-common_2.12:3.9.5 wanted version 1.0.6
        {
            "bind_args": {
                "actual": "@org_scala_lang_modules_scala_xml_2_12",
                "name": "jar/org/scala_lang/modules/scala_xml_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "7cc3b6ceb56e879cb977e8e043f4bfe2e062f78795efd7efa09f85003cb3230a",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.12/1.0.6/scala-xml_2.12-1.0.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_modules_scala_xml_2_12",
                "srcjar_sha256": "a7e8aac79394df396afda98b35537791809d815ce15ab2224f7d31e50c753922",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.12/1.0.6/scala-xml_2.12-1.0.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang:scala-library fixed to 2.12.4
        # - com.typesafe.play:twirl-api_2.12:1.2.1 wanted version 2.12.0
        # - org.scala-lang:scala-reflect:2.12.4 wanted version 2.12.4
        # - org.specs2:specs2-core_2.12:3.9.5 wanted version 2.12.2
        {
            "bind_args": {
                "actual": "@org_scala_lang_scala_library",
                "name": "jar/org/scala_lang/scala_library"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "17824fcee4d3f46cfaa4da84ebad4f58496426c2b9bc9e341f812ab23a667d5d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.12.4/scala-library-2.12.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_scala_library",
                "srcjar_sha256": "b9c34cf968a0e348ecec32837797a794ffeade2fe016323474fe756cb7d74042",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.12.4/scala-library-2.12.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_lang_scala_reflect",
                "name": "jar/org/scala_lang/scala_reflect"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scala_lang_scala_library" ],
                "jar_sha256": "ea70fe0e550e24d23fc52a18963b2be9c3b24283f4cb18b98327eb72746567cc",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.12.4/scala-reflect-2.12.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_scala_reflect",
                "srcjar_sha256": "7b4dc73dc3cb46ac9ac948a0c231ccd989bed6cefb137c302a8ec8d6811e8148",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.12.4/scala-reflect-2.12.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_scalaz_core_2_12",
                "name": "jar/org/scalaz/scalaz_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "fa0d36e43575ca7fd2a520a3f1dc5dbaa8259f13bb99685d23ae106c0fcd2df1",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-core_2.12/7.2.12/scalaz-core_2.12-7.2.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_scalaz_core_2_12",
                "srcjar_sha256": "0f8761b32e9a5f4957973e35754e380c98deea22285d961d735b717888c270c4",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-core_2.12/7.2.12/scalaz-core_2.12-7.2.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_scalaz_effect_2_12",
                "name": "jar/org/scalaz/scalaz_effect_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "47927141e36a7adbd420d5a429660f387902d398b6713cb2c6be3db2d9365b21",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-effect_2.12/7.2.12/scalaz-effect_2.12-7.2.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_scalaz_effect_2_12",
                "srcjar_sha256": "1407eddce20f50c3435aaed76633011de44ec71f6d288d201b29ccb8060bc25c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-effect_2.12/7.2.12/scalaz-effect_2.12-7.2.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_common_2_12",
                "name": "jar/org/specs2/specs2_common_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_scala_lang_modules_scala_parser_combinators_2_12",
                    "@org_scala_lang_modules_scala_xml_2_12",
                    "@org_scala_lang_scala_reflect",
                    "@org_scalaz_scalaz_core_2_12",
                    "@org_scalaz_scalaz_effect_2_12"
                ],
                "jar_sha256": "9115e3f445b91137f3ab6ebb9ca6d6cbe3e5e54ea4668d794417378170cef628",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-common_2.12/3.9.5/specs2-common_2.12-3.9.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_common_2_12",
                "srcjar_sha256": "8fd91f2753c083c1a663a39cb2476eae1aa18c928b79e035c3a10824430115e7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-common_2.12/3.9.5/specs2-common_2.12-3.9.5-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_core_2_12",
                "name": "jar/org/specs2/specs2_core_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_scala_lang_scala_library",
                    "@org_specs2_specs2_matcher_2_12"
                ],
                "jar_sha256": "6c8667a4d73fc167b9df6d8d214ae2ed14925e5a1b0b30d649d9a63d2c32cbe3",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-core_2.12/3.9.5/specs2-core_2.12-3.9.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_core_2_12",
                "srcjar_sha256": "eb986ba65d85198836fd6fbd922a64fc0dfee5b76c96a7ee1f285f35837ce676",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-core_2.12/3.9.5/specs2-core_2.12-3.9.5-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_matcher_2_12",
                "name": "jar/org/specs2/specs2_matcher_2_12"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_specs2_specs2_common_2_12" ],
                "jar_sha256": "a56dcd89584f30c40ddd0c674fcfc6aebd5935d2fd61c49a61480ac6f1963ac7",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-matcher_2.12/3.9.5/specs2-matcher_2.12-3.9.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_matcher_2_12",
                "srcjar_sha256": "6f0aac870b35c6618bcddc82e39e0103c6b57a781557f1a96e512e8c0b001132",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-matcher_2.12/3.9.5/specs2-matcher_2.12-3.9.5-sources.jar"
                ]
            },
            "lang": "java"
        }
    ]
    