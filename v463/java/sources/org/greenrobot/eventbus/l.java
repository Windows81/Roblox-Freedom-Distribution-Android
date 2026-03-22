package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f7990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f7991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f7992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f7993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f7994e;
    String f;

    public l(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f7990a = method;
        this.f7991b = threadMode;
        this.f7992c = cls;
        this.f7993d = i;
        this.f7994e = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        a();
        l lVar = (l) obj;
        lVar.a();
        return this.f.equals(lVar.f);
    }

    private synchronized void a() {
        if (this.f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f7990a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f7990a.getName());
            sb.append('(');
            sb.append(this.f7992c.getName());
            this.f = sb.toString();
        }
    }

    public int hashCode() {
        return this.f7990a.hashCode();
    }
}
