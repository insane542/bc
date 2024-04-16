from bitcoinlib.wallets import Wallet
w = Wallet.create('Wallet6')
key1 = w.get_key()
print('Wallet Address: ',key1.address)
w.scan()
print(w.info())
