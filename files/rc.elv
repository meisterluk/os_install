## customize prompt
edit:prompt = { styled (tilde-abbr $pwd) '#666666'; styled '᚛ ' cyan }  # › ❱ ᚛
edit:rprompt = (constantly (styled ❰(whoami)✸(hostname)❱ inverse))

## directories
go = (get-env HOME)"/dev/go/src/github.com/meisterluk"

## my personal shorthands (TODO find PowerShell equivalents)
# TODO find PowerShell equivalents
#  d := disk usage information / directory size
#  f := find a file
#  g := search for a substring in text files
#  i := inform me with a message
#  l := list current working directory content
#  m := create folder and change to it
#  o := # open file for viewing/editing or current folder in file explorer
#  t := show file system tree with maxdepth 3
fn l { e:pwd; e:ls -la }
fn i [m]{ e:zenity --info --text $m }
fn d { e:df }
fn f [fp]{ e:find . -iname $fp }
fn g [@args]{ e:rg --color=always -g "!venv" $@args }
fn c [fp]{ e:cd $fp; e:find . -maxdepth 1 -type d; echo "\nCurrent working directory: "$E:PWD }
fn t { e:find . -maxdepth 3 }
fn m [f]{
  if (eq ?(test -z $f) $ok) { echo "folder name required" }
  else { e:mkdir $f; e:cd $f }
}
fn o [@args]{
  if (eq ?(test -z $@args) $ok) {
    thunar $E:PWD &
  } elif (eq ?(test -d $@args) $ok) {
    thunar $@args &
  } else {
    xdg-open $@args
  }
}

## aliases
fn py [@args]{ e:python3 -u -B $@args }
fn dcl { docker container ls --all }
fn ds { docker exec -it (docker container ls | awk 'NR==2{print \$1}') bash }
fn dup { docker-compose up --build --always-recreate-deps --remove-orphans }
fn sile-docker { docker run --volume $E:PWD":/data" --user (id -u)":"(id -g) siletypesetter/sile:latest sile }
fn ac { source ./venv/bin/activate }
fn fm { thunar }
fn pcat { pygmentize -f terminal256 -O style=native -g }
fn did { vim +'normal Go' +'r!date' ~/did.txt }

## environment variables
set-env BROWSER "firefox"
set-env EDITOR "vim"
set-env LC_ALL "en_US.UTF-8"

set-env PATH $E:PATH":"(get-env HOME)/bin"

## functions
fn strip-file-extension [fp]{
  use str
  i = (str:last-index $fp ".")
  if (eq $i -1) { put $fp }
  else { put $fp[0:$i] }
}
fn observe [@a]{
  e:time $@a
  e:zenity --info --text="Command finished"
}
fn webp2png [src]{
  use str
  s = (strip-file-extension $src)
  e:dwebp $src -o $s".png"
}
fn mem [@p]{
  # https://stackoverflow.com/a/20277787
  e:ps -eo rss,pid,euser,args:100 --sort %mem | grep -v grep | grep -i "$@p" | awk '{printf $1/1024 "MB"; $1=""; print }'
}
fn website-backup [u]{
  e:wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $u
}
fn encrypt-file [f]{
  gpg --symmetric --armor $f
}
fn pdfvim [f]{
  echo "Running vim with PDF options";
  vim -b $f -c "set statusline+=%o laststatus=2";
}
fn sage {
  docker run -it --rm -p 8888:8888 -v $E:HOME"/Documents/sagemath/:/home/sage/Notebooks:rw" cemulate/sagemath-jupyterlab
}
fn exifsetartist [artist input output]{
  t1 = (test -z $artist)
  t2 = (test -z $input)
  t3 = (test -z $output)

  if (or $t1 $t2 $t3) {
    fail "usage: exifsetartist <artist> <input.jpg> <output.jpg>"
    return
  }
  exif --output=$output --ifd="EXIF" --tag="Artist" --set-value=$artist $input
}
fn svg2plainsvg [src]{
  inkscape $src --export-text-to-path --export-pdf=/tmp/tmp.pdf
  inkscape -l (strip-file-extension $src)".plain.svg" /tmp/tmp.pdf
  rm /tmp/tmp.pdf
}
# common unicode symbols
fn chars {
  echo " ♡ ♥ ❤ 💕 🧡 💓 ";
  echo " sup: ⁰¹²³⁴⁵⁶⁷⁸⁹ ⁺⁻⁼⁽⁾ ᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾᴿᵀᵁⱽᵂ ";
  echo " sub: ₀₁₂₃₄₅₆₇₈₉ ₊₋₌₍₎ ₐₑₕᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓ ";
  echo " 😀 😁 😂 😄 😅 😆 😃 😇 😉 😎 😊 🙂 😍 😘 😙 😚";
  echo " 😛 😜 😝 🤓 😶 😐 😋 😌 😈 😏 😒 😓 😔 😑 😗 😲 ";
  echo " 😕 😖 😞 😟 🤔 🙃 👍 💩 🖥️   💻 ⌨️  🖊️   ✒️  ✍️  🇦 🇹  🇯 🇵 ";
  echo " ½ ¼ ¾ ⅐ ⅑ ⅒ ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ ⅟ ↉ ‰ ‱ © ® ";
  echo " ⟷ ← → ↓ ↑ × ✖ ⋮ … · ・ ÷ - - — ↤ ↦ ↧ ↥ ⟻ ⟼ ";
  echo " ⇔ ⇐ ⇒ ⇓ ⇑ ‖ ⟸ ⟹  ⤆ ⤇ ⇩ ⇧ ⟽  ⟾  ⟺ ";
  echo " ∀ ∃ ∈ ∉ ⊂ ⊆ ⊇ ⊃ ⋀ ∧ ⋁ ∨ ≠ ≡ ≢ ≅ ≤ ≥ ∆ ⊲ ¬ ℚ ℕ ℤ ℂ ℝ ∞ ∑ ";
  echo " “en” ‘en’ „dt“ ‚dt‘ «Guillemets» ‹fr› 《アルバム》【quote】「kagikakko」  † € £ ¥ 円 ";
  echo " α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω ";
  echo " Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω ";
  echo " ā ē ī ō ū ä ë ï ö ü ß Ä Ë Ï Ö Ü  § … ♂ ♀ ";
  echo " ✓ 🗸 ✔ ✔️ ☑️ 🗹 ✅ ⍻ ⭕ 🗴 🗙 ❌ ❎ ";
}
fn syslog {
  tail -f /var/log/syslog
}
fn quotes {
  echo " “English” ‘quotation’ marks "
  echo " „Deutsche“ (99-66) ‚Anführungszeichen‘ »angeführt« ›erklärt‹ "
  echo " «Guillemets» "
  echo " TeX: ``english'' and ,,german``. "
}
fn lastmod [fp]{
  if (eq ?(test -z $fp) $ok) {
    e:find . -exec stat "\\{\\}" --printf="%y\n" "\\;" | sort -n -r | head -n 1
  } else {
    e:find $@fp -exec stat "\\{\\}" --printf="%y\n" "\\;" | sort -n -r | head -n 1
  }
}
fn currency-euryen [val]{
  wget -qO- "http://www.google.com/finance/converter?a="$val"&from=eur&to=jpy" | sed '/res/!d;s/<[^>]*>//g';
}
fn currency-yeneur [val]{
  wget -qO- "http://www.google.com/finance/converter?a="$val"&from=jpy&to=eur" | sed '/res/!d;s/<[^>]*>//g';
}
fn currency-cconv [val src dst]{
  wget -qO- "http://www.google.com/finance/converter?a="$val"&from="$src"&to="$dst | sed '/res/!d;s/<[^>]*>//g';
}
fn msg [@args]{
  msg caption = "msg" "caption"
  if (eq (count $args) 0) {
    msg caption = "Hello World" "Hi"
  } elif (eq (count $args) 1) {
    msg caption = $args[0] $args[0]
  } else {
    msg caption = $args[0] $args[1]
  }

  kdialog --caption $caption --title $msg --msgbox $msg
}
fn wttr {
  curl -4 http://wttr.in/
}

## intro text
printf "%s  %s\n" (styled (e:date --iso-8601=seconds) '#AAAADD') (styled (e:uname -o -i) '#DDAAAA')

