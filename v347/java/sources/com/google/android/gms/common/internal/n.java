package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f3514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.common.f f3515b;

    public n() {
        this(com.google.android.gms.common.e.a());
    }

    public n(com.google.android.gms.common.f fVar) {
        this.f3514a = new SparseIntArray();
        w.a(fVar);
        this.f3515b = fVar;
    }

    public int a(Context context, a.f fVar) {
        int iB;
        w.a(context);
        w.a(fVar);
        if (!fVar.e()) {
            return 0;
        }
        int iG = fVar.g();
        int i = this.f3514a.get(iG, -1);
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.f3514a.size()) {
                iB = i;
                break;
            }
            int iKeyAt = this.f3514a.keyAt(i2);
            if (iKeyAt > iG && this.f3514a.get(iKeyAt) == 0) {
                iB = 0;
                break;
            }
            i2++;
        }
        if (iB == -1) {
            iB = this.f3515b.b(context, iG);
        }
        this.f3514a.put(iG, iB);
        return iB;
    }

    public void a() {
        this.f3514a.clear();
    }
}
