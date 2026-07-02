package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class akw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4140b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4139a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<akv> f4141c = new LinkedList();

    public final akv a() {
        int i;
        akv akvVar;
        int i2;
        akv akvVar2 = null;
        int i3 = 0;
        synchronized (this.f4139a) {
            if (this.f4141c.size() == 0) {
                jd.b("Queue empty");
                return null;
            }
            if (this.f4141c.size() < 2) {
                akv akvVar3 = this.f4141c.get(0);
                akvVar3.e();
                return akvVar3;
            }
            int i4 = Integer.MIN_VALUE;
            int i5 = 0;
            for (akv akvVar4 : this.f4141c) {
                int i6 = akvVar4.i();
                if (i6 > i4) {
                    i2 = i6;
                    akvVar = akvVar4;
                    i = i5;
                } else {
                    i = i3;
                    akvVar = akvVar2;
                    i2 = i4;
                }
                i5++;
                i4 = i2;
                akvVar2 = akvVar;
                i3 = i;
            }
            this.f4141c.remove(i3);
            return akvVar2;
        }
    }

    public final boolean a(akv akvVar) {
        boolean z;
        synchronized (this.f4139a) {
            z = this.f4141c.contains(akvVar);
        }
        return z;
    }

    public final boolean b(akv akvVar) {
        synchronized (this.f4139a) {
            Iterator<akv> it = this.f4141c.iterator();
            while (it.hasNext()) {
                akv next = it.next();
                if (!((Boolean) aoo.f().a(aro.W)).booleanValue() || com.google.android.gms.ads.internal.aw.i().l().b()) {
                    if (((Boolean) aoo.f().a(aro.Y)).booleanValue() && !com.google.android.gms.ads.internal.aw.i().l().d() && akvVar != next && next.d().equals(akvVar.d())) {
                        it.remove();
                        return true;
                    }
                } else if (akvVar != next && next.b().equals(akvVar.b())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void c(akv akvVar) {
        synchronized (this.f4139a) {
            if (this.f4141c.size() >= 10) {
                jd.b(new StringBuilder(41).append("Queue is full, current size = ").append(this.f4141c.size()).toString());
                this.f4141c.remove(0);
            }
            int i = this.f4140b;
            this.f4140b = i + 1;
            akvVar.a(i);
            this.f4141c.add(akvVar);
        }
    }
}
