package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RecordConsentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Account f6055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Scope[] f6056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6057d;

    RecordConsentRequest(int i, Account account, Scope[] scopeArr, String str) {
        this.f6054a = i;
        this.f6055b = account;
        this.f6056c = scopeArr;
        this.f6057d = str;
    }

    public Account a() {
        return this.f6055b;
    }

    public Scope[] b() {
        return this.f6056c;
    }

    public String c() {
        return this.f6057d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f6054a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) a(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable[]) b(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, c(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
