{:user  {:plugins  [[com.jakemccrary/lein-test-refresh  "0.10.0"]
                    [lein-pprint  "1.1.1"]
                    [lein-marginalia "0.7.1"]
                    [lein-clojars "0.9.1"]
                    [lein-localrepo "0.5.3"]]
         :dependencies  [[reloaded.repl "0.2.1"]
                         [org.clojure/tools.nrepl "0.2.12"]
                         [org.clojure/tools.namespace "0.2.11"]
                         [refactor-nrepl "2.2.0"]
                         [cider/cider-nrepl  "0.12.0"]
                         [pjstadig/humane-test-output "0.7.0"]
                         [spyscope "0.1.5"]
                         [alembic  "0.3.2"]
                         [im.chit/vinyasa.inject "0.3.4"]
                         [im.chit/vinyasa.reflection "0.3.4"]]
         :injections
         [(require 'spyscope.core)
          (require 'pjstadig.humane-test-output)
          (pjstadig.humane-test-output/activate!)
          (require '[vinyasa.inject :as inject])

          (inject/in clojure.core
                     [clojure.java.shell sh]
                     [alembic.still  [distill pull] lein  [load-project pull-project]]
                     [clojure.tools.namespace.repl refresh]
                     [vinyasa.reflection .& .> .? .* .% .%>])]}}
