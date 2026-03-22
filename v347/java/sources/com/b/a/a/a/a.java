package com.b.a.a.a;

import com.b.a.a.e;
import com.b.a.a.j;
import com.b.a.a.m;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    m f2274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f2275b;

    public a(m mVar) {
        this.f2274a = mVar;
    }

    @Override // com.b.a.a.m
    public boolean a(j jVar) {
        c();
        return this.f2274a.a(jVar);
    }

    private void c() {
        this.f2275b = null;
    }

    @Override // com.b.a.a.m
    public boolean b(j jVar) {
        c();
        return this.f2274a.b(jVar);
    }

    @Override // com.b.a.a.m
    public void a(j jVar, j jVar2) {
        c();
        this.f2274a.a(jVar, jVar2);
    }

    @Override // com.b.a.a.m
    public void c(j jVar) {
        c();
        this.f2274a.c(jVar);
    }

    @Override // com.b.a.a.m
    public int a() {
        if (this.f2275b == null) {
            this.f2275b = Integer.valueOf(this.f2274a.a());
        }
        return this.f2275b.intValue();
    }

    private boolean d() {
        return this.f2275b != null && this.f2275b.intValue() == 0;
    }

    @Override // com.b.a.a.m
    public int a(e eVar) {
        if (d()) {
            return 0;
        }
        return this.f2274a.a(eVar);
    }

    @Override // com.b.a.a.m
    public j b(e eVar) {
        if (d()) {
            return null;
        }
        j jVarB = this.f2274a.b(eVar);
        if (jVarB != null && this.f2275b != null) {
            this.f2275b = Integer.valueOf(this.f2275b.intValue() - 1);
            return jVarB;
        }
        return jVarB;
    }

    @Override // com.b.a.a.m
    public Long c(e eVar) {
        return this.f2274a.c(eVar);
    }

    @Override // com.b.a.a.m
    public void b() {
        c();
        this.f2274a.b();
    }

    @Override // com.b.a.a.m
    public Set<j> d(e eVar) {
        return this.f2274a.d(eVar);
    }

    @Override // com.b.a.a.m
    public void d(j jVar) {
        c();
        this.f2274a.d(jVar);
    }

    @Override // com.b.a.a.m
    public j a(String str) {
        return this.f2274a.a(str);
    }
}
