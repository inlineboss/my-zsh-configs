function automake() {
   local watchfiles="$(dirname $PWD)"
   local buildir="$(basename "dirname "$cdir"")"
   echo "Build dir: $PWD"
   echo "Watch dir: $watchfiles"
   fswatch * -e "$buildir" -0 $watchfiles  | xargs -0 -n 1 -I {} make
}
