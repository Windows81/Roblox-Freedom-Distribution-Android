package com.b.a.a.g;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b[] f2330a = new b[i.values().length];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f2331b = new int[this.f2330a.length];

    public c() {
        Arrays.fill(this.f2331b, 0);
    }

    public <T extends b> T a(Class<T> cls) {
        i iVar = i.m.get(cls);
        synchronized (iVar) {
            T t = (T) this.f2330a[iVar.ordinal()];
            if (t != null) {
                this.f2330a[iVar.ordinal()] = t.f2328b;
                this.f2331b[iVar.ordinal()] = r2[r3] - 1;
                t.f2328b = null;
                return t;
            }
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                com.b.a.a.f.b.a(e, "Cannot create an instance of " + cls + ". Make sure it has a public empty constructor.", new Object[0]);
                return null;
            } catch (InstantiationException e2) {
                com.b.a.a.f.b.a(e2, "Cannot create an instance of " + cls + ". Make sure it has a empty constructor.", new Object[0]);
                return null;
            }
        }
    }

    public void a(b bVar) {
        i iVar = bVar.f2327a;
        bVar.b();
        synchronized (iVar) {
            if (this.f2331b[iVar.ordinal()] < 20) {
                bVar.f2328b = this.f2330a[iVar.ordinal()];
                this.f2330a[iVar.ordinal()] = bVar;
                int[] iArr = this.f2331b;
                int iOrdinal = iVar.ordinal();
                iArr[iOrdinal] = iArr[iOrdinal] + 1;
            }
        }
    }
}
