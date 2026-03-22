package com.birbit.android.jobqueue.messaging.a;

import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f2996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f2997e;
    private CancelResult.AsyncCancelCallback f;

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
    }

    public c() {
        super(com.birbit.android.jobqueue.messaging.g.CANCEL);
    }

    public o c() {
        return this.f2996d;
    }

    public String[] d() {
        return this.f2997e;
    }

    public CancelResult.AsyncCancelCallback e() {
        return this.f;
    }
}
