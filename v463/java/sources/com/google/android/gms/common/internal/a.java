package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.q;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Account f3732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3734c;

    public static Account a(q qVar) {
        if (qVar != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return qVar.a();
            } catch (RemoteException unused) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
                return null;
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.common.internal.q
    public Account a() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.f3734c) {
            return this.f3732a;
        }
        if (!com.google.android.gms.common.l.c(this.f3733b, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.f3734c = callingUid;
        return this.f3732a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return this.f3732a.equals(((a) obj).f3732a);
        }
        return false;
    }
}
