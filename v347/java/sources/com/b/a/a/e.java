package com.b.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s f2296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<String> f2297d = new HashSet();
    private final List<String> e = new ArrayList();
    private final List<String> f = new ArrayList();
    private boolean g;
    private Long h;
    private long i;

    public boolean a() {
        return this.f2294a;
    }

    public boolean b() {
        return this.f2295b;
    }

    public s c() {
        return this.f2296c;
    }

    public Set<String> d() {
        return this.f2297d;
    }

    public List<String> e() {
        return this.e;
    }

    public boolean f() {
        return this.g;
    }

    public Long g() {
        return this.h;
    }

    public List<String> h() {
        return this.f;
    }

    void a(boolean z) {
        this.f2294a = z;
    }

    void b(boolean z) {
        this.f2295b = z;
    }

    void a(s sVar) {
        this.f2296c = sVar;
    }

    void c(boolean z) {
        this.g = z;
    }

    void a(String[] strArr) {
        this.f2297d.clear();
        if (strArr != null) {
            Collections.addAll(this.f2297d, strArr);
        }
    }

    public void a(long j) {
        this.i = j;
    }

    void a(Collection<String> collection) {
        this.e.clear();
        if (collection != null) {
            this.e.addAll(collection);
        }
    }

    void b(Collection<String> collection) {
        this.f.clear();
        if (collection != null) {
            this.f.addAll(collection);
        }
    }

    public long i() {
        return this.i;
    }

    void a(Long l) {
        this.h = l;
    }

    void j() {
        this.f2294a = false;
        this.f2295b = false;
        this.f2296c = null;
        this.f2297d.clear();
        this.e.clear();
        this.f.clear();
        this.g = false;
        this.h = null;
        this.i = Long.MIN_VALUE;
    }

    void a(int i) {
        a(i == 1);
        b(i != 3);
    }
}
