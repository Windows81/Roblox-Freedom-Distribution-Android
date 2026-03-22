package com.roblox.client.r;

import android.os.Handler;
import android.os.Looper;
import com.birbit.android.jobqueue.g;
import com.birbit.android.jobqueue.l;
import com.birbit.android.jobqueue.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Handler f6923e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6924d;
    private Throwable f;

    protected abstract void a(a aVar);

    @Override // com.birbit.android.jobqueue.g
    public void f() {
    }

    protected static Handler m() {
        if (f6923e == null) {
            synchronized (f.class) {
                if (f6923e == null) {
                    f6923e = new Handler(Looper.getMainLooper());
                }
            }
        }
        return f6923e;
    }

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Throwable f6926b;

        public a(int i, Throwable th) {
            this.f6925a = i;
            this.f6926b = th;
        }
    }

    public static l n() {
        return new l(1);
    }

    public f() {
        this(n());
    }

    protected f(l lVar) {
        super(lVar);
        this.f6924d = "RobloxJob";
        this.f = null;
    }

    @Override // com.birbit.android.jobqueue.g
    protected void a(int i) {
        a(new a(i, this.f));
    }

    @Override // com.birbit.android.jobqueue.g
    protected m a(Throwable th, int i, int i2) {
        this.f = th;
        return m.f2987b;
    }
}
