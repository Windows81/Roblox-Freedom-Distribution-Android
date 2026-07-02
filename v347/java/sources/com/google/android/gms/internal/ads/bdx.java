package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
@cm
public class bdx {
    public static bds a(String str) throws RemoteException {
        try {
            return new bdy((sq) Class.forName(str, false, bdx.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
