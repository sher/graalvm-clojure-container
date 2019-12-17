(ns convey-api.core
  (:gen-class)
  (:require [org.httpkit.server :as http]))

(defonce server ^:private (atom nil))

(defn app [req]
  (println (:uri req))
  {:status 200
   :headers {"Content-Type" "text/html"}
   :body "<h1>hello</h1>"})

(defn -main [& args]
  (reset! server (http/run-server app {:port 8080}))
  (println "Server running on port 8080"))
