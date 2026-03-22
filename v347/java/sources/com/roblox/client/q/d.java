package com.roblox.client.q;

import com.roblox.client.k.e;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7730d;
    private String e;
    private String f;
    private boolean g;
    private com.roblox.client.q.a h;
    private ArrayList<e> i;
    private int j;
    private int k;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f7731a = new d();
    }

    public static d a() {
        return a.f7731a;
    }

    private d() {
        this.f7727a = -1L;
        this.g = true;
        this.h = new com.roblox.client.q.a();
        this.i = new ArrayList<>();
    }

    public void b() {
        this.f7728b = 0;
        this.f7729c = 0;
        this.f7730d = 0;
        this.j = 0;
        this.e = null;
        this.g = true;
        this.f7727a = -1L;
        this.h.a();
        this.i.clear();
    }

    public void a(int i) {
        this.f7728b = i;
    }

    public void b(int i) {
        this.f7729c = i;
    }

    public int c() {
        return this.f7730d;
    }

    public void c(int i) {
        this.f7730d = i;
    }

    public String d() {
        return (this.e == null || this.e.equals("null")) ? "" : this.e;
    }

    public void a(String str) {
        this.e = str;
    }

    public long e() {
        return this.f7727a;
    }

    public void a(long j) {
        this.f7727a = j;
    }

    public String f() {
        return (this.f == null || this.f.equals("null")) ? "" : this.f;
    }

    public void b(String str) {
        this.f = str;
    }

    public boolean g() {
        return this.g;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public boolean a(com.roblox.client.q.a aVar) {
        if (this.h.equals(aVar)) {
            return false;
        }
        this.h = aVar;
        return true;
    }

    public com.roblox.client.q.a h() {
        return this.h;
    }

    public void a(ArrayList<e> arrayList) {
        this.i = arrayList;
    }

    public ArrayList<e> i() {
        return this.i;
    }

    public int j() {
        return this.j;
    }

    public void d(int i) {
        this.j = i;
    }

    public int k() {
        return this.k;
    }

    public void e(int i) {
        this.k = i;
    }
}
