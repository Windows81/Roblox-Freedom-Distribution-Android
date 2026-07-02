package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pn implements Iterable<pl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<pl> f5436a = new ArrayList();

    public static boolean a(pc pcVar) {
        pl plVarB = b(pcVar);
        if (plVarB == null) {
            return false;
        }
        plVarB.f5433b.b();
        return true;
    }

    static pl b(pc pcVar) {
        for (pl plVar : com.google.android.gms.ads.internal.aw.z()) {
            if (plVar.f5432a == pcVar) {
                return plVar;
            }
        }
        return null;
    }

    public final int a() {
        return this.f5436a.size();
    }

    public final void a(pl plVar) {
        this.f5436a.add(plVar);
    }

    public final void b(pl plVar) {
        this.f5436a.remove(plVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<pl> iterator() {
        return this.f5436a.iterator();
    }
}
