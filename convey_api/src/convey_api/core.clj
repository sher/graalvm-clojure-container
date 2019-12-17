(ns convey-api.core
  (:gen-class)
  (:require [aleph.http :as http]))

;; try metosin packages

(defonce server ^:private (atom nil))

(defn handler [req]
  {:status 200
   :headers {"Content-Type" "text/html"}
   :body "<h1>hello</h1>"})

(defn -main [& args]
  (reset! server (http/start-server handler {:port 8080}))
  (println "Server running on port 8080"))
