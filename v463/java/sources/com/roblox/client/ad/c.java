package com.roblox.client.ad;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.p;
import com.roblox.client.ab.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f5620a = e.LIGHT;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5624e;
    private String f;
    private boolean g;
    private int h;
    private int i;
    private p<e> j;
    private String k;
    private String l;
    private com.roblox.client.signup.multiscreen.a.a m;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f5625a = new c();
    }

    public static c a() {
        return a.f5625a;
    }

    private c() {
        this.f5621b = -1L;
        this.g = true;
        this.j = new p<>();
        this.k = "";
    }

    public void b() {
        this.f5622c = 0;
        this.h = 0;
        this.k = "";
        this.f = "";
        this.f5623d = null;
        this.g = true;
        this.f5621b = -1L;
        a(f5620a);
    }

    public int c() {
        return this.f5622c;
    }

    public void a(int i) {
        this.f5622c = i;
    }

    public void a(String str) {
        this.f5623d = str;
    }

    public long d() {
        return this.f5621b;
    }

    public void a(long j) {
        this.f5621b = j;
    }

    public String e() {
        String str = this.f5624e;
        return (str == null || str.equals("null")) ? "" : this.f5624e;
    }

    public void b(String str) {
        this.f5624e = str;
    }

    public String f() {
        String str = this.f;
        return (str == null || str.equals("null")) ? "" : this.f;
    }

    public void c(String str) {
        this.f = str;
    }

    public String g() {
        return this.l;
    }

    public void d(String str) {
        this.l = str;
    }

    public com.roblox.client.signup.multiscreen.a.a h() {
        return this.m;
    }

    public void a(com.roblox.client.signup.multiscreen.a.a aVar) {
        this.m = aVar;
    }

    public boolean i() {
        return this.g;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public int j() {
        return this.h;
    }

    public void b(int i) {
        this.h = i;
    }

    public int k() {
        return this.i;
    }

    public void c(int i) {
        this.i = i;
    }

    public String l() {
        return m().toString();
    }

    public e m() {
        e eVarM_ = this.j.m_();
        return eVarM_ != null ? eVarM_ : f5620a;
    }

    public LiveData<e> n() {
        return this.j;
    }

    public void a(e eVar) {
        this.j.b(eVar);
    }

    public void o() {
        if (this.j.m_() == null) {
            a(f5620a);
        }
    }

    public void e(String str) {
        this.k = str;
    }

    public String p() {
        return this.k;
    }
}
