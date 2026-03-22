package com.birbit.android.jobqueue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f2931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<String> f2932d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f2933e = new ArrayList();
    private final List<String> f = new ArrayList();
    private boolean g;
    private Long h;
    private long i;

    public boolean a() {
        return this.f2929a;
    }

    public boolean b() {
        return this.f2930b;
    }

    public o c() {
        return this.f2931c;
    }

    public Set<String> d() {
        return this.f2932d;
    }

    public List<String> e() {
        return this.f2933e;
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
        this.f2929a = z;
    }

    void b(boolean z) {
        this.f2930b = z;
    }

    void a(o oVar) {
        this.f2931c = oVar;
    }

    void c(boolean z) {
        this.g = z;
    }

    void a(String[] strArr) {
        this.f2932d.clear();
        if (strArr != null) {
            Collections.addAll(this.f2932d, strArr);
        }
    }

    public void a(long j) {
        this.i = j;
    }

    void a(Collection<String> collection) {
        this.f2933e.clear();
        if (collection != null) {
            this.f2933e.addAll(collection);
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
        this.f2929a = false;
        this.f2930b = false;
        this.f2931c = null;
        this.f2932d.clear();
        this.f2933e.clear();
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
