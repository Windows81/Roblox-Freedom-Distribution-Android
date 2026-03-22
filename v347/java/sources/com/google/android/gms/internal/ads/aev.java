package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aev;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class aev<M extends aev<M>> extends afb {
    protected aex Y;

    @Override // com.google.android.gms.internal.ads.afb
    protected int a() {
        if (this.Y == null) {
            return 0;
        }
        int iA = 0;
        for (int i = 0; i < this.Y.a(); i++) {
            iA += this.Y.b(i).a();
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public void a(aet aetVar) throws IOException {
        if (this.Y == null) {
            return;
        }
        for (int i = 0; i < this.Y.a(); i++) {
            this.Y.b(i).a(aetVar);
        }
    }

    protected final boolean a(aer aerVar, int i) throws IOException {
        int iJ = aerVar.j();
        if (!aerVar.b(i)) {
            return false;
        }
        int i2 = i >>> 3;
        afd afdVar = new afd(i, aerVar.a(iJ, aerVar.j() - iJ));
        aey aeyVarA = null;
        if (this.Y == null) {
            this.Y = new aex();
        } else {
            aeyVarA = this.Y.a(i2);
        }
        if (aeyVarA == null) {
            aeyVarA = new aey();
            this.Y.a(i2, aeyVarA);
        }
        aeyVarA.a(afdVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ afb clone() throws CloneNotSupportedException {
        return (aev) clone();
    }

    @Override // com.google.android.gms.internal.ads.afb
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        aev aevVar = (aev) super.clone();
        aez.a(this, aevVar);
        return aevVar;
    }
}
