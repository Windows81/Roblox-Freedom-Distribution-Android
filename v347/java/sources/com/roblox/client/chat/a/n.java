package com.roblox.client.chat.a;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f6528a;
    private Object e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.support.v4.g.f<m> f6530c = new android.support.v4.g.f<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f6531d = new b(this.e);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<Long, i> f6529b = new HashMap<>();

    public static n a() {
        if (f6528a == null) {
            synchronized (a.class) {
                if (f6528a == null) {
                    f6528a = new n();
                }
            }
        }
        return f6528a;
    }

    private n() {
    }

    public m a(long j) {
        return this.f6530c.a(j);
    }

    public void a(m mVar) {
        synchronized (this.e) {
            m mVarA = this.f6530c.a(mVar.a());
            if (mVarA != null) {
                mVarA.a(mVar);
            } else {
                this.f6530c.b(mVar.a(), mVar);
            }
        }
    }

    public void b(m mVar) {
        this.f6531d.a(mVar, false);
    }

    public void c(m mVar) {
        this.f6531d.a(mVar);
    }

    public ArrayList<m> b() {
        return this.f6531d;
    }

    public boolean a(long j, i iVar) {
        synchronized (this.e) {
            if (!this.f6529b.containsKey(Long.valueOf(j)) || !this.f6529b.get(Long.valueOf(j)).equals(iVar)) {
                this.f6529b.put(Long.valueOf(j), iVar);
                return true;
            }
            return false;
        }
    }

    public int b(long j) {
        Integer numValueOf;
        i iVar = this.f6529b.get(Long.valueOf(j));
        if (iVar != null && (numValueOf = Integer.valueOf(iVar.a())) != null) {
            return numValueOf.intValue();
        }
        return -1;
    }

    public i c(long j) {
        return this.f6529b.get(Long.valueOf(j));
    }

    public String d(long j) {
        switch (b(j)) {
            case -1:
            case 0:
                return "Offline";
            case 1:
                return "Online";
            case 2:
                return "In Game";
            case 3:
                return "In Studio";
            default:
                return "";
        }
    }

    public void c() {
        this.f6529b.clear();
        this.f6530c.c();
        this.f6531d.clear();
    }
}
