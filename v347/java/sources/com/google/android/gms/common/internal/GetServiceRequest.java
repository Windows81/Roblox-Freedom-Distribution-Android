package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3444d;
    private IBinder e;
    private Scope[] f;
    private Bundle g;
    private Account h;
    private Feature[] i;
    private Feature[] j;
    private boolean k;

    public GetServiceRequest(int i) {
        this.f3441a = 4;
        this.f3443c = com.google.android.gms.common.f.f3430b;
        this.f3442b = i;
        this.k = true;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z) {
        this.f3441a = i;
        this.f3442b = i2;
        this.f3443c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f3444d = "com.google.android.gms";
        } else {
            this.f3444d = str;
        }
        if (i < 2) {
            this.h = a(iBinder);
        } else {
            this.e = iBinder;
            this.h = account;
        }
        this.f = scopeArr;
        this.g = bundle;
        this.i = featureArr;
        this.j = featureArr2;
        this.k = z;
    }

    private static Account a(IBinder iBinder) {
        if (iBinder != null) {
            return a.a(o.a.a(iBinder));
        }
        return null;
    }

    public GetServiceRequest a(Account account) {
        this.h = account;
        return this;
    }

    public GetServiceRequest a(Bundle bundle) {
        this.g = bundle;
        return this;
    }

    public GetServiceRequest a(o oVar) {
        if (oVar != null) {
            this.e = oVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest a(String str) {
        this.f3444d = str;
        return this;
    }

    public GetServiceRequest a(Collection<Scope> collection) {
        this.f = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public GetServiceRequest a(Feature[] featureArr) {
        this.i = featureArr;
        return this;
    }

    public GetServiceRequest b(Feature[] featureArr) {
        this.j = featureArr;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3441a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3442b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f3443c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f3444d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable[]) this.f, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.h, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable[]) this.i, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable[]) this.j, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
