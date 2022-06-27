# Clojure native-image on GraalVM containerized
This is a small experiment of running a clojure project on GraalVM container using native-image.

## Goods
- Container startup time significantly imroves, compared to JVM container

## Not so goods
- Using class reflrections with native-image is irestricted
