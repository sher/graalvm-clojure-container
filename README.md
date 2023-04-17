# Clojure native-image on GraalVM containerized
This is a small experiment of running a clojure project on GraalVM container using native-image.
Compare to the similar app using Golang https://github.com/sher/graal-clojure/blob/master/convey_api/alter.go

### Goods
- Container startup time improved significantly, compared to JVM container

### Not so goods
- There are limitations using native-image like class reflrections etc.
  - The situation seems to have improved since I tried it https://www.graalvm.org/22.0/reference-manual/native-image/Reflection/

### Things to try next
- PGO https://www.graalvm.org/22.0/reference-manual/native-image/PGO/
