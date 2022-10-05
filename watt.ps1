[double]$1kwh = 0.88

'De eneco heeft ' +$1kwh + ' als tarief voor elektriciteit'
''

'hoeveel Watt gebruikt je apparaat ?'
''

[double]$watt = Read-Host


$Total = ($watt / 1000) * $1kwh

'Met ' + $watt.ToString() + ' watt gebruik je ' + $Total.ToString() + ' euro per uur '