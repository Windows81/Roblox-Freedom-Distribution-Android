package com.birbit.android.jobqueue.messaging.a;

import com.birbit.android.jobqueue.IntCallback;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends com.birbit.android.jobqueue.messaging.b implements IntCallback.MessageWithCallback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IntCallback f3003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3004e;
    private String f;

    public h() {
        super(com.birbit.android.jobqueue.messaging.g.PUBLIC_QUERY);
        this.f3004e = -1;
    }

    public IntCallback c() {
        return this.f3003d;
    }

    public int d() {
        return this.f3004e;
    }

    public String e() {
        return this.f;
    }

    @Override // com.birbit.android.jobqueue.IntCallback.MessageWithCallback
    public void setCallback(IntCallback intCallback) {
        this.f3003d = intCallback;
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3003d = null;
        this.f3004e = -1;
    }

    public String toString() {
        return "PublicQuery[" + this.f3004e + "]";
    }
}
