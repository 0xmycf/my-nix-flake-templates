(declare-project
  :name "proj-name"
  :version "0.1.0"
  :description "A template janet program"
  :dependencies
  [{:url "https://github.com/ianthehenry/judge.git" :tag "v2.10.0"}])

# some useful dependencies
# sqlite: https://github.com/janet-lang/sqlite3
# raycast bindngs: https://github.com/janet-lang/jaylib
# spork (though I couldnt get the docs to build): https://github.com/janet-lang/spork
# joy (full stack webframework): https://github.com/joy-framework/joy

(declare-executable
  :name "proj-name"
  :entry "proj-name.janet")
