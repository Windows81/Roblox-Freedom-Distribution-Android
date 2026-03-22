package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class afb {
    protected volatile int Z = -1;

    public static final <T extends afb> T a(T t, byte[] bArr) throws afa {
        return (T) a(t, bArr, 0, bArr.length);
    }

    private static final <T extends afb> T a(T t, byte[] bArr, int i, int i2) throws afa {
        try {
            aer aerVarA = aer.a(bArr, 0, i2);
            t.a(aerVarA);
            aerVarA.a(0);
            return t;
        } catch (afa e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public static final byte[] a(afb afbVar) {
        byte[] bArr = new byte[afbVar.d()];
        try {
            aet aetVarA = aet.a(bArr, 0, bArr.length);
            afbVar.a(aetVarA);
            aetVarA.a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    protected int a() {
        return 0;
    }

    public abstract afb a(aer aerVar) throws IOException;

    public void a(aet aetVar) throws IOException {
    }

    @Override // 
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public afb clone() throws CloneNotSupportedException {
        return (afb) super.clone();
    }

    public final int d() {
        int iA = a();
        this.Z = iA;
        return iA;
    }

    public String toString() {
        return afc.a(this);
    }
}
