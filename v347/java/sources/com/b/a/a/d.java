package com.b.a.a;

import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Collection<i> f2292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Collection<i> f2293b;

    public interface a {
        void a(d dVar);
    }

    public d() {
        this.f2292a = new HashSet();
        this.f2293b = new HashSet();
    }

    public d(Collection<i> collection, Collection<i> collection2) {
        this.f2292a = collection;
        this.f2293b = collection2;
    }
}
