package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class agu extends agt {
    private agu(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static agu a(String str, Context context, boolean z) {
        a(context, z);
        return new agu(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.agt
    protected final List<Callable<Void>> a(ahm ahmVar, zn znVar, wj wjVar) {
        if (ahmVar.c() == null || !this.r) {
            return super.a(ahmVar, znVar, wjVar);
        }
        int iN = ahmVar.n();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.a(ahmVar, znVar, wjVar));
        arrayList.add(new aig(ahmVar, "1QeH3Cf7T53ayw17Ebbo9YTdhU+IFx0X5nCtC5gZQym4uicOVPXxYWmMK9k58i8n", "bHJRpFJ+2R5LAbYQUBDMyfYpLd1oiGixlpIqMJOBQPY=", znVar, iN, 24));
        return arrayList;
    }
}
