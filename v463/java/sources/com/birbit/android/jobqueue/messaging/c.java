package com.birbit.android.jobqueue.messaging;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b[] f3013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f3014b;

    public c() {
        b[] bVarArr = new b[g.values().length];
        this.f3013a = bVarArr;
        int[] iArr = new int[bVarArr.length];
        this.f3014b = iArr;
        Arrays.fill(iArr, 0);
    }

    public <T extends b> T a(Class<T> cls) {
        g gVar = g.m.get(cls);
        synchronized (gVar) {
            T t = (T) this.f3013a[gVar.ordinal()];
            if (t != null) {
                this.f3013a[gVar.ordinal()] = t.f3011b;
                this.f3014b[gVar.ordinal()] = r7[r3] - 1;
                t.f3011b = null;
                return t;
            }
            try {
                try {
                    return cls.newInstance();
                } catch (InstantiationException e2) {
                    com.birbit.android.jobqueue.log.a.a(e2, "Cannot create an instance of " + cls + ". Make sure it has a empty constructor.", new Object[0]);
                    return null;
                }
            } catch (IllegalAccessException e3) {
                com.birbit.android.jobqueue.log.a.a(e3, "Cannot create an instance of " + cls + ". Make sure it has a public empty constructor.", new Object[0]);
                return null;
            }
        }
    }

    public void a(b bVar) {
        g gVar = bVar.f3010a;
        bVar.b();
        synchronized (gVar) {
            if (this.f3014b[gVar.ordinal()] < 20) {
                bVar.f3011b = this.f3013a[gVar.ordinal()];
                this.f3013a[gVar.ordinal()] = bVar;
                int[] iArr = this.f3014b;
                int iOrdinal = gVar.ordinal();
                iArr[iOrdinal] = iArr[iOrdinal] + 1;
            }
        }
    }
}
