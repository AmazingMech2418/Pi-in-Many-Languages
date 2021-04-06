// RexTester API wrapper
const fetch = require('node-fetch');

/**
 * Key:
 * Repl.it Compatible - Known to be possible in Repl.it
 * Unknown Compatibility - Unknown whether or not possible in Replit.
 * Officially Repl.it Compatible - In hidden languages list, but doesn't work
 * * - Used in this
 * Nothing - Not known to be compatible with Repl.it
 * 
 *     C# = 1                Repl.it Compatible
 *     VB.NET = 2            
 *     F# = 3                Repl.it Compatible
 *     Java = 4              Repl.it Compatible
 *     Python = 5            Repl.it Compatible
 *     C (gcc) = 6           Repl.it Compatible
 *     C++ (gcc) = 7         Repl.it Compatible
 *     Php = 8               Repl.it Compatible
 *     Pascal = 9            Repl.it Compatible
 *     Objective-C = 10      Repl.it Compatible
 *     Haskell = 11          Repl.it Compatible
 *     Ruby = 12             Repl.it Compatible
 *     Perl = 13             Repl.it Compatible
 *     Lua = 14              Repl.it Compatible
 *     Nasm = 15             Repl.it Compatible
 *     Sql Server = 16       SQLite Repl.it Compatible
 *     Javascript = 17       Repl.it Compatible
 *     Lisp = 18             Repl.it Compatible
 *     Prolog = 19*
 *     Go = 20               Repl.it Compatible
 *     Scala = 21            Repl.it Compatible
 *     Scheme = 22           Repl.it Compatible
 *     Node.js = 23          Repl.it Compatible
 *     Python 3 = 24         Repl.it Compatible
 *     Octave = 25           Unknown Compatibility
 *     C (clang) = 26        Repl.it Compatible
 *     C++ (clang) = 27      Repl.it Compatible
 *     C++ (vc++) = 28
 *     C (vc) = 29
 *     D = 30                Repl.it Compatible
 *     R = 31                Repl.it Compatible
 *     Tcl = 32              Repl.it Compatible
 *     MySQL = 33
 *     PostgreSQL = 34       Unknown compatibility
 *     Oracle = 35
 *     Swift = 37            Repl.it Compatible
 *     Bash = 38             Repl.it Compatible
 *     Ada = 39
 *     Erlang = 40           Repl.it Compatible
 *     Elixir = 41           Repl.it Compatible
 *     Ocaml = 42            Officially Repl.it Compatible
 *     Kotlin = 43           Repl.it Compatible
 *     Brainf*** = 44        Repl.it Compatible
 *     Fortran = 45,         Repl.it Compatible
 *     Rust = 46,            Repl.it Compatible
 *     Clojure = 47          Repl.it Compatible
 */


fetch("https://rextester.com/rundotnet/Run", {
  "headers": {
    "accept": "text/plain, */*; q=0.01",
    "accept-language": "en-US,en;q=0.9",
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8"
  },
  "referrer": "https://rextester.com/l/prolog_online_compiler",
  "referrerPolicy": "strict-origin-when-cross-origin",
  "body": "LanguageChoiceWrapper=19&EditorChoiceWrapper=1&LayoutChoiceWrapper=1&Program="+encodeURIComponent(require('fs').readFileSync('main.pl'))+"&Input=&Privacy=&PrivacyUsers=&Title=&SavedOutput=&WholeError=&WholeWarning=&StatsToSave=&CodeGuid=&IsInEditMode=False&IsLive=False",
  "method": "POST",
  "mode": "cors"
}).then(n=>n.json()).then(n=>console.log(n.Result));
