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
