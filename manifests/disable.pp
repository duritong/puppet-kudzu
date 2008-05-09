#######################################
# kudzu module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# disable kudzu
class kudzu::disable inherits kudzu::base {
    Service[kudzu]{
        ensure => stopped,
        enable => false,
    }
}
