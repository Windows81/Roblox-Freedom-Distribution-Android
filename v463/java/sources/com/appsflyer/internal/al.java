package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class al extends FilterInputStream {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static final short f197 = (short) ((Math.sqrt(5.0d) - 1.0d) * Math.pow(2.0d, 15.0d));

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private int f198;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private int f199;

    /* JADX INFO: renamed from: ɨ, reason: contains not printable characters */
    private int f200;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private byte[] f201;

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private int f202;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private int f203;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private byte[] f204;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private byte[] f205;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private int f206;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private int f207;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private int f208;

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private int f209;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public al(InputStream inputStream, int[] iArr, int i, byte[] bArr, int i2, int i3) throws IOException {
        super(inputStream);
        this.f207 = Integer.MAX_VALUE;
        this.f204 = new byte[8];
        this.f205 = new byte[8];
        this.f201 = new byte[8];
        this.f199 = 8;
        this.f203 = 8;
        this.f198 = Math.min(Math.max(i2, 5), 16);
        this.f206 = i3;
        if (i3 == 3) {
            System.arraycopy(bArr, 0, this.f205, 0, 8);
        }
        long j = ((((long) iArr[0]) & 4294967295L) << 32) | (4294967295L & ((long) iArr[1]));
        if (i != 0) {
            int i4 = (int) j;
            this.f208 = i4;
            this.f202 = i4 * i;
            this.f200 = i4 ^ i;
            this.f209 = (int) (j >> 32);
            return;
        }
        this.f208 = (int) j;
        long j2 = j >> 3;
        short s = f197;
        this.f202 = (int) ((((long) s) * j2) >> 32);
        this.f200 = (int) (j >> 32);
        this.f209 = (int) (j2 + ((long) s));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m152();
        int i = this.f199;
        if (i >= this.f203) {
            return -1;
        }
        byte[] bArr = this.f204;
        this.f199 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m152();
            int i5 = this.f199;
            if (i5 >= this.f203) {
                if (i4 == i) {
                    return -1;
                }
                return i2 - (i3 - i4);
            }
            byte[] bArr2 = this.f204;
            this.f199 = i5 + 1;
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
        m152();
        return this.f203 - this.f199;
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private void m153() {
        if (this.f206 == 3) {
            byte[] bArr = this.f204;
            System.arraycopy(bArr, 0, this.f201, 0, bArr.length);
        }
        byte[] bArr2 = this.f204;
        int i = ((bArr2[0] << 24) & (-16777216)) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & 65280) + (bArr2[3] & 255);
        int i2 = ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & 255);
        int i3 = 0;
        while (true) {
            int i4 = this.f198;
            if (i3 >= i4) {
                break;
            }
            short s = f197;
            i2 -= ((((i4 - i3) * s) + i) ^ ((i << 4) + this.f200)) ^ ((i >>> 5) + this.f209);
            i -= (((i2 << 4) + this.f208) ^ ((s * (i4 - i3)) + i2)) ^ ((i2 >>> 5) + this.f202);
            i3++;
        }
        byte[] bArr3 = this.f204;
        bArr3[0] = (byte) (i >> 24);
        bArr3[1] = (byte) (i >> 16);
        bArr3[2] = (byte) (i >> 8);
        bArr3[3] = (byte) i;
        bArr3[4] = (byte) (i2 >> 24);
        bArr3[5] = (byte) (i2 >> 16);
        bArr3[6] = (byte) (i2 >> 8);
        bArr3[7] = (byte) i2;
        if (this.f206 == 3) {
            for (int i5 = 0; i5 < 8; i5++) {
                byte[] bArr4 = this.f204;
                bArr4[i5] = (byte) (bArr4[i5] ^ this.f205[i5]);
            }
            byte[] bArr5 = this.f201;
            System.arraycopy(bArr5, 0, this.f205, 0, bArr5.length);
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private int m152() throws IOException {
        if (this.f207 == Integer.MAX_VALUE) {
            this.f207 = ((FilterInputStream) this).in.read();
        }
        if (this.f199 == 8) {
            byte[] bArr = this.f204;
            int i = this.f207;
            bArr[0] = (byte) i;
            if (i < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i2 = 1;
            do {
                int i3 = ((FilterInputStream) this).in.read(this.f204, i2, 8 - i2);
                if (i3 <= 0) {
                    break;
                }
                i2 += i3;
            } while (i2 < 8);
            if (i2 < 8) {
                throw new IllegalStateException("unexpected block size");
            }
            m153();
            int i4 = ((FilterInputStream) this).in.read();
            this.f207 = i4;
            this.f199 = 0;
            this.f203 = i4 < 0 ? 8 - (this.f204[7] & 255) : 8;
        }
        return this.f203;
    }
}
