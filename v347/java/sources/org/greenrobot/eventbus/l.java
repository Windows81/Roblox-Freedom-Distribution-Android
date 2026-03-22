package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f8272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f8273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f8274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f8275d;
    final boolean e;
    String f;

    public l(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f8272a = method;
        this.f8273b = threadMode;
        this.f8274c = cls;
        this.f8275d = i;
        this.e = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            a();
            l lVar = (l) obj;
            lVar.a();
            return this.f.equals(lVar.f);
        }
        return false;
    }

    private synchronized void a() {
        if (this.f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f8272a.getDeclaringClass().getName());
            sb.append('#').append(this.f8272a.getName());
            sb.append('(').append(this.f8274c.getName());
            this.f = sb.toString();
        }
    }

    public int hashCode() {
        return this.f8272a.hashCode();
    }
}
