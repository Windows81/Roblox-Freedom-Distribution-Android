package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class an extends FilterInputStream {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private byte[] f211;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private int f212;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private ak f213;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private final int f214;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private int f215;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private byte[] f216;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private byte[] f217;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private int[] f218;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private int f219;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private int f220;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public an(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        this.f212 = Integer.MAX_VALUE;
        this.f214 = Math.min(Math.max(i, 3), 16);
        this.f211 = new byte[8];
        byte[] bArr2 = new byte[8];
        this.f216 = bArr2;
        this.f217 = new byte[8];
        this.f218 = new int[2];
        this.f219 = 8;
        this.f220 = 8;
        this.f215 = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.f213 = new ak(iArr, this.f214, true, z);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m155();
        int i = this.f219;
        if (i >= this.f220) {
            return -1;
        }
        byte[] bArr = this.f211;
        this.f219 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m155();
            int i5 = this.f219;
            if (i5 >= this.f220) {
                if (i4 == i) {
                    return -1;
                }
                return i2 - (i3 - i4);
            }
            byte[] bArr2 = this.f211;
            this.f219 = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        while (j2 < j && read() != -1) {
            j2++;
        }
        return j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m155();
        return this.f220 - this.f219;
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private void m154() {
        if (this.f215 == 2) {
            byte[] bArr = this.f211;
            System.arraycopy(bArr, 0, this.f217, 0, bArr.length);
        }
        byte[] bArr2 = this.f211;
        aj.m149(((bArr2[0] << 24) & (-16777216)) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & 65280) + (bArr2[3] & 255), ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & 255), false, this.f214, this.f213.f194, this.f213.f195, this.f218);
        int[] iArr = this.f218;
        int i = iArr[0];
        int i2 = iArr[1];
        byte[] bArr3 = this.f211;
        bArr3[0] = (byte) (i >> 24);
        bArr3[1] = (byte) (i >> 16);
        bArr3[2] = (byte) (i >> 8);
        bArr3[3] = (byte) i;
        bArr3[4] = (byte) (i2 >> 24);
        bArr3[5] = (byte) (i2 >> 16);
        bArr3[6] = (byte) (i2 >> 8);
        bArr3[7] = (byte) i2;
        if (this.f215 == 2) {
            for (int i3 = 0; i3 < 8; i3++) {
                byte[] bArr4 = this.f211;
                bArr4[i3] = (byte) (bArr4[i3] ^ this.f216[i3]);
            }
            byte[] bArr5 = this.f217;
            System.arraycopy(bArr5, 0, this.f216, 0, bArr5.length);
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private int m155() throws IOException {
        if (this.f212 == Integer.MAX_VALUE) {
            this.f212 = ((FilterInputStream) this).in.read();
        }
        if (this.f219 == 8) {
            byte[] bArr = this.f211;
            int i = this.f212;
            bArr[0] = (byte) i;
            if (i < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i2 = 1;
            do {
                int i3 = ((FilterInputStream) this).in.read(this.f211, i2, 8 - i2);
                if (i3 <= 0) {
                    break;
                }
                i2 += i3;
            } while (i2 < 8);
            if (i2 < 8) {
                throw new IllegalStateException("unexpected block size");
            }
            m154();
            int i4 = ((FilterInputStream) this).in.read();
            this.f212 = i4;
            this.f219 = 0;
            this.f220 = i4 < 0 ? 8 - (this.f211[7] & 255) : 8;
        }
        return this.f220;
    }
}
