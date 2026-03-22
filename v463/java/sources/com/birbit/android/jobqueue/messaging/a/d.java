package com.birbit.android.jobqueue.messaging.a;

import com.birbit.android.jobqueue.CancelResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    CancelResult.AsyncCancelCallback f2998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    CancelResult f2999e;

    public d() {
        super(com.birbit.android.jobqueue.messaging.g.CANCEL_RESULT_CALLBACK);
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f2999e = null;
        this.f2998d = null;
    }

    public void a(CancelResult.AsyncCancelCallback asyncCancelCallback, CancelResult cancelResult) {
        this.f2998d = asyncCancelCallback;
        this.f2999e = cancelResult;
    }

    public CancelResult.AsyncCancelCallback c() {
        return this.f2998d;
    }

    public CancelResult d() {
        return this.f2999e;
    }
}
