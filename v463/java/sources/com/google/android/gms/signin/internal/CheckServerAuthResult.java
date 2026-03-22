package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CheckServerAuthResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CheckServerAuthResult> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Scope> f4764c;

    CheckServerAuthResult(int i, boolean z, List<Scope> list) {
        this.f4762a = i;
        this.f4763b = z;
        this.f4764c = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4762a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4763b);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, this.f4764c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
