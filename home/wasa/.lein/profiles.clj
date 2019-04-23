{:user {:plugins [[cider/cider-nrepl "0.21.1"]]
        :injections [(defn dbg
                       ([thing]
                        (dbg "XXX" thing))
                       ([prefix thing]
                        (println prefix)
                        (print (with-out-str (clojure.pprint/pprint thing)))
                        thing))
                     (intern 'clojure.core 'dbg dbg)]}}
