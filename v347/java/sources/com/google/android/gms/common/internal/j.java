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
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class j<T extends IInterface> extends d<T> implements a.f {
    private final e e;
    private final Set<Scope> f;
    private final Account g;

    protected j(Context context, Looper looper, int i, e eVar, f.a aVar, f.b bVar) {
        this(context, looper, k.a(context), com.google.android.gms.common.e.a(), i, eVar, (f.a) w.a(aVar), (f.b) w.a(bVar));
    }

    protected j(Context context, Looper looper, k kVar, com.google.android.gms.common.e eVar, int i, e eVar2, f.a aVar, f.b bVar) {
        super(context, looper, kVar, eVar, i, a(aVar), a(bVar), eVar2.f());
        this.e = eVar2;
        this.g = eVar2.a();
        this.f = b(eVar2.d());
    }

    private static d.a a(f.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new ad(aVar);
    }

    private static d.b a(f.b bVar) {
        if (bVar == null) {
            return null;
        }
        return new ae(bVar);
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

    protected Set<Scope> a(Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int g() {
        return super.g();
    }

    @Override // com.google.android.gms.common.internal.d
    public final Account q() {
        return this.g;
    }

    @Override // com.google.android.gms.common.internal.d
    public Feature[] r() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Set<Scope> z() {
        return this.f;
    }
}
