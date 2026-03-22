package com.google.android.gms.common.api.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<i<?>> f3663a = Collections.newSetFromMap(new WeakHashMap());

    public final void a() {
        Iterator<i<?>> it = this.f3663a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f3663a.clear();
    }
}
