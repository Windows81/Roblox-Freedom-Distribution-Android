package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Account f3454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3456c;

    public static Account a(o oVar) {
        Account accountA = null;
        if (oVar != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                accountA = oVar.a();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return accountA;
    }

    @Override // com.google.android.gms.common.internal.o
    public Account a() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.f3456c) {
            return this.f3454a;
        }
        if (!com.google.android.gms.common.k.b(this.f3455b, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.f3456c = callingUid;
        return this.f3454a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return this.f3454a.equals(((a) obj).f3454a);
        }
        return false;
    }
}
