#######################################
# kudzu module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "kudzu": }
class kudzu {
    include kudzu::base 
}

class kudzu::base {
    package{kudzu:
        ensure => present,
    }
    service{kudzu:
        ensure => running,
        enable => true,
        require => Package[kudzu],
    }
}
