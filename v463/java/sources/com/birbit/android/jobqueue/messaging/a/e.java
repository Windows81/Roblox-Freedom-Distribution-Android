package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3000d;

    public e() {
        super(com.birbit.android.jobqueue.messaging.g.COMMAND);
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3000d = -1;
    }

    public int c() {
        return this.f3000d;
    }

    public void a(int i) {
        this.f3000d = i;
    }

    public String toString() {
        return "Command[" + this.f3000d + "]";
    }
}
