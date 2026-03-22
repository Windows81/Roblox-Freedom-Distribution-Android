package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zk;
import com.google.android.gms.internal.ads.zl;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class zk<MessageType extends zk<MessageType, BuilderType>, BuilderType extends zl<MessageType, BuilderType>> implements ack {
    private static boolean zzdpg = false;
    protected int zzdpf = 0;

    void a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final zv h() {
        try {
            aaa aaaVarB = zv.b(l());
            a(aaaVarB.b());
            return aaaVarB.a();
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length()).append("Serializing ").append(name).append(" to a ").append("ByteString").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final byte[] i() {
        try {
            byte[] bArr = new byte[l()];
            aaj aajVarA = aaj.a(bArr);
            a(aajVarA);
            aajVarA.b();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("byte array").length()).append("Serializing ").append(name).append(" to a ").append("byte array").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    int j() {
        throw new UnsupportedOperationException();
    }
}
