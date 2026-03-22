package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f3820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.common.f f3821b;

    public p() {
        this(com.google.android.gms.common.e.a());
    }

    public p(com.google.android.gms.common.f fVar) {
        this.f3820a = new SparseIntArray();
        aa.a(fVar);
        this.f3821b = fVar;
    }

    public int a(Context context, a.f fVar) {
        aa.a(context);
        aa.a(fVar);
        int iB = 0;
        if (!fVar.k()) {
            return 0;
        }
        int iF = fVar.f();
        int i = this.f3820a.get(iF, -1);
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.f3820a.size()) {
                iB = i;
                break;
            }
            int iKeyAt = this.f3820a.keyAt(i2);
            if (iKeyAt > iF && this.f3820a.get(iKeyAt) == 0) {
                break;
            }
            i2++;
        }
        if (iB == -1) {
            iB = this.f3821b.b(context, iF);
        }
        this.f3820a.put(iF, iB);
        return iB;
    }

    public void a() {
        this.f3820a.clear();
    }
}
