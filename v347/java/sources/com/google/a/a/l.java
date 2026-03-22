package com.google.a.a;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class l implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.e.a.a f2590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f2591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2592c;

    public l(int i) {
        this.f2592c = i;
        a();
    }

    @Override // com.google.a.a.j
    public void a() {
        this.f2591b = new byte[this.f2592c];
        this.f2590a = com.google.e.a.a.a(this.f2591b);
    }

    @Override // com.google.a.a.j
    public void a(int i, long j) throws IOException {
        this.f2590a.a(i, j);
    }

    @Override // com.google.a.a.j
    public void a(int i, String str) throws IOException {
        this.f2590a.a(i, str);
    }

    @Override // com.google.a.a.j
    public byte[] b() throws IOException {
        int iA = this.f2590a.a();
        if (iA < 0) {
            throw new IOException();
        }
        if (iA == 0) {
            return this.f2591b;
        }
        byte[] bArr = new byte[this.f2591b.length - iA];
        System.arraycopy(this.f2591b, 0, bArr, 0, bArr.length);
        return bArr;
    }
}
