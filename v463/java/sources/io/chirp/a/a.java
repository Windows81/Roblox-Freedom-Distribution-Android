package io.chirp.a;

import android.media.AudioRecord;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7925e;

    public int a() {
        return this.f7925e;
    }

    public a a(int i) {
        this.f7921a = i;
        return this;
    }

    public a b() {
        this.f7922b = 1;
        this.f7923c = 16;
        this.f7924d = 2;
        this.f7925e = AudioRecord.getMinBufferSize(this.f7921a, 16, 2);
        return this;
    }

    public AudioRecord c() {
        return new AudioRecord(this.f7922b, this.f7921a, this.f7923c, this.f7924d, this.f7925e);
    }
}
