{:user  {:plugins  [[com.jakemccrary/lein-test-refresh  "0.10.0"]
                    [lein-pprint  "1.1.1"]]
         :dependencies  [[reloaded.repl "0.2.4"]
                         [org.clojure/tools.nrepl "0.2.12"]
                         [org.clojure/tools.namespace "0.2.11"]
                         [refactor-nrepl "2.3.1"]
                         [cider/cider-nrepl  "0.14.0"]
                         [pjstadig/humane-test-output "0.7.0"]
                         [spyscope "0.1.5"]]
         ;; :injections
         ;; TODO: spyscope does not seem to work with clj 1.9
         ;; [(require 'spyscope.core)
         ;;  (require 'pjstadig.humane-test-output)
         ;;  (pjstadig.humane-test-output/activate!)]
         :deploy-repositories [["clojars" {:url "https://clojars.org/repo"
                                           :sign-releases false}]]}}
