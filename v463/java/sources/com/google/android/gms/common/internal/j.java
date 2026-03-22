package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.k;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class j<T extends IInterface> extends d<T> implements a.f, k.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f3798e;
    private final Set<Scope> f;
    private final Account g;

    protected j(Context context, Looper looper, int i, e eVar, f.b bVar, f.c cVar) {
        this(context, looper, l.a(context), com.google.android.gms.common.e.a(), i, eVar, (f.b) aa.a(bVar), (f.c) aa.a(cVar));
    }

    protected j(Context context, Looper looper, l lVar, com.google.android.gms.common.e eVar, int i, e eVar2, f.b bVar, f.c cVar) {
        super(context, looper, lVar, eVar, i, a(bVar), a(cVar), eVar2.h());
        this.f3798e = eVar2;
        this.g = eVar2.b();
        this.f = b(eVar2.e());
    }

    private static d.a a(f.b bVar) {
        if (bVar == null) {
            return null;
        }
        return new ai(bVar);
    }

    private static d.b a(f.c cVar) {
        if (cVar == null) {
            return null;
        }
        return new aj(cVar);
    }

    private final Set<Scope> b(Set<Scope> set) {
        Set<Scope> setA = a(set);
        Iterator<Scope> it = setA.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setA;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Set<Scope> C() {
        return this.f;
    }

    protected final e D() {
        return this.f3798e;
    }

    protected Set<Scope> a(Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int f() {
        return super.f();
    }

    @Override // com.google.android.gms.common.internal.d
    public final Account u() {
        return this.g;
    }

    @Override // com.google.android.gms.common.internal.d
    public Feature[] v() {
        return new Feature[0];
    }
}
