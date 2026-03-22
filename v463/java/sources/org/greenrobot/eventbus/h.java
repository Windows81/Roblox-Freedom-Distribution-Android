package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<h> f7980d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f7981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n f7982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f7983c;

    private h(Object obj, n nVar) {
        this.f7981a = obj;
        this.f7982b = nVar;
    }

    static h a(n nVar, Object obj) {
        synchronized (f7980d) {
            int size = f7980d.size();
            if (size > 0) {
                h hVarRemove = f7980d.remove(size - 1);
                hVarRemove.f7981a = obj;
                hVarRemove.f7982b = nVar;
                hVarRemove.f7983c = null;
                return hVarRemove;
            }
            return new h(obj, nVar);
        }
    }

    static void a(h hVar) {
        hVar.f7981a = null;
        hVar.f7982b = null;
        hVar.f7983c = null;
        synchronized (f7980d) {
            if (f7980d.size() < 10000) {
                f7980d.add(hVar);
            }
        }
    }
}
