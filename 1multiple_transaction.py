import hashlib
import binascii
import datetime
import collections
from Crypto.PublicKey import RSA
from Crypto import Random
from Crypto.Hash import SHA
from Crypto.Signature import PKCS1_v1_5

class Client:
    def __init__(self):
        random = Random.new().read
        self._private_key = RSA.generate(1024, random)
        self._public_key = self._private_key.publickey()
        self._signer = PKCS1_v1_5.new(self._private_key)
    
    @property
    def identity(self):
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')

class Transaction:
    def __init__(self, sender, recipient, value):
        self.sender = sender
        self.recipient = recipient
        self.value = value
        self.time = datetime.datetime.now()
        self.signature = None  # Added to store the signature
    
    def to_dict(self):
        if self.sender == "Genesis":
            identity = "Genesis"
        else:
            identity = self.sender.identity
        return collections.OrderedDict({
            'sender': identity,
            'recipient': self.recipient,
            'value': self.value,
            'time' : self.time})
    
    def sign_transaction(self):
        private_key = self.sender._private_key
        signer = PKCS1_v1_5.new(private_key)
        h = SHA.new(str(self.to_dict()).encode('utf8'))
        self.signature = binascii.hexlify(signer.sign(h)).decode('ascii')
    
    def is_valid(self):
        if self.sender == "Genesis":
            return True
        if not self.signature:
            return False
        public_key = self.sender._public_key
        verifier = PKCS1_v1_5.new(public_key)
        h = SHA.new(str(self.to_dict()).encode('utf8'))
        return verifier.verify(h, binascii.unhexlify(self.signature))

def display_transaction(transaction):
    dict = transaction.to_dict()
    print("sender: " + dict['sender'])
    print('-----')
    print("recipient: " + dict['recipient'])
    print('-----')
    print("value: " + str(dict['value']))
    print('-----')
    print("time: " + str(dict['time']))
    print('-----')

transactions = []
A = Client()
B = Client()
t1 = Transaction(
    A,
    B.identity,
    15.0
)
t1.sign_transaction()
transactions.append(t1)

# Display the transaction
display_transaction(t1)

# Verify the transaction
print("Is valid:", t1.is_valid())
