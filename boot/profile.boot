(set-env!
  :dependencies #(conj % '[cider/cider-nrepl "0.12.0"] 
                         '[refactor-nrepl "2.2.0"]
                         '[org.clojure/tools.namespace "0.2.11"] 
                         '[spyscope "0.1.5"]))

(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.12.0"]
                [refactor-nrepl "2.2.0"]
                [org.clojure/tools.namespace "0.2.11"]
                [spyscope "0.1.5"]])

(swap! boot.repl/*default-middleware*
       conj 'cider.nrepl/cider-middleware)

(require '[clojure.tools.namespace.repl :refer [refresh set-refresh-dirs]])
(apply set-refresh-dirs (get-env :directories))

(require 'spyscope.core)
(boot.core/load-data-readers!)

(defn- generate-lein-project-file! [& {:keys [keep-project] :or {:keep-project true}}]
 (require 'clojure.java.io)
 (let [pfile ((resolve 'clojure.java.io/file) "project.clj")
  ; Only works when pom options are set using task-options!
  {:keys [project version]} (:task-options (meta #'boot.task.built-in/pom))
  prop #(when-let [x (get-env %2)] [%1 x])
  head (list* 'defproject (or project 'boot-project) (or version "0.0.0-SNAPSHOT")
    (concat
     (prop :url :url)
     (prop :license :license)
     (prop :description :description)
     [:dependencies (get-env :dependencies)
     :source-paths (vec (concat (get-env :source-paths)
         (get-env :resource-paths)))]))
  proj (pp-str head)]
  (if-not keep-project (.deleteOnExit pfile))
  (spit pfile proj)))

(deftask lein-generate
 "Generate a leiningen `project.clj` file.
 This task generates a leiningen `project.clj` file based on the boot
 environment configuration, including project name and version (generated
 if not present), dependencies, and source paths. Additional keys may be added
 to the generated `project.clj` file by specifying a `:lein` key in the boot
 environment whose value is a map of keys-value pairs to add to `project.clj`."
 []
 (generate-lein-project-file! :keep-project true))
