package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<h> f8262d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f8263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n f8264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f8265c;

    private h(Object obj, n nVar) {
        this.f8263a = obj;
        this.f8264b = nVar;
    }

    static h a(n nVar, Object obj) {
        synchronized (f8262d) {
            int size = f8262d.size();
            if (size > 0) {
                h hVarRemove = f8262d.remove(size - 1);
                hVarRemove.f8263a = obj;
                hVarRemove.f8264b = nVar;
                hVarRemove.f8265c = null;
                return hVarRemove;
            }
            return new h(obj, nVar);
        }
    }

    static void a(h hVar) {
        hVar.f8263a = null;
        hVar.f8264b = null;
        hVar.f8265c = null;
        synchronized (f8262d) {
            if (f8262d.size() < 10000) {
                f8262d.add(hVar);
            }
        }
    }
}
