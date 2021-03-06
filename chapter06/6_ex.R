# (1)
統計好き = c(6,10,6,10,11,6,11,7)
統計嫌い = c(5,3,5,9,3,3,9,5,8,7,7,9)
var.test(統計好き, 統計嫌い)
# p値が0.9781で有意水準5%より小さいため、帰無仮説は棄却される。
# つまり、2つの母分散は等質ではない。
# そのため、Welchの検定を行う。

t.test(統計好き, 統計嫌い, var.equal = TRUE)
# p値が0.048で有意水準5%より小さいため、帰無仮説は棄却される。
# つまり、2群の平均値に有意な差はある。

# (2)
心理男 = c(13,14,7,12,10,6,8,15,4,14)
心理女 = c(9,6,10,12,5,12,8,8,12,15)
var.test(心理男, 心理女)
# p値が0.5196で有意水準5%より大きいため、帰無仮説は棄却されない。
# つまり、2つの母分散は等質でないとは言えない。
# そのため、t検定を行う。

t.test(心理男, 心理女, var.equal = TRUE)
# p値が0.7058で有意水準5%より大きいため、帰無仮説は棄却されない。
# つまり、男女で有意な差があるとは言えない。

# (3)
参加前 = c(61, 50, 41, 55, 51, 48, 46, 55, 65, 70)
参加後 = c(59, 48, 33, 54, 47, 52, 38, 50, 64, 63)
t.test(参加前, 参加後, paired = TRUE)

# p値が0.0192で有意水準5％より小さいため、帰無仮説は棄却される。
# つまり、参加前後は有意な差がある(ダイエットプログラムは効果がある)と言える
