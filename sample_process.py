import pandas as pd
import numpy as np
import matplotlib.pyplot as plt  
from scipy.fftpack import fft
import struct

sheetnames = ["iladata.csv"]

deltaf = 1/3000000.0

def d2a(r):
    #print(r)
    return struct.unpack(">i", bytes.fromhex(r[8:16]))[0] / 2147483648.0

def d2b(r):
    #print(r)
    return struct.unpack(">i", bytes.fromhex(r[0:8]))[0] / 2147483648.0

for sheetname in sheetnames:
    df = pd.read_csv('iladata/'+sheetname, header=0, skiprows=[1,], index_col=0, dtype={"bajie7020_i/rfb_fir/rfb_fir_out/system_ila_1/inst/net_slot_1_axis_tdata[63:0]": "str"})
    chs = df["bajie7020_i/rfb_fir/rfb_fir_out/system_ila_1/inst/net_slot_1_axis_tdata[63:0]"]
    #print(chs)
    cha = chs.apply(d2a)
    chb = chs.apply(d2b)
    df["cha"] = cha
    df["chb"] = chb
    #print(cha)
    cha_fft = np.fft.fft(cha)
    chb_fft = np.fft.fft(chb)
    #print(cha_fft)
    cha_fft_amp = abs(cha_fft)*(2/len(cha_fft))
    chb_fft_amp = abs(chb_fft)*(2/len(chb_fft))
    ch_freq= np.fft.fftfreq(len(cha_fft), deltaf)
    plt.tight_layout()
    plt.subplot(1, 2, 1)
    plt.stem(ch_freq[:(int(len(cha_fft)/2))-1], cha_fft_amp[:(int(len(cha_fft)/2))-1])
    plt.xscale('log')
    plt.subplot(1, 2, 2)
    plt.stem(ch_freq[:(int(len(cha_fft)/2))-1], chb_fft_amp[:(int(len(cha_fft)/2))-1])
    plt.xscale('log')
    plt.show()
