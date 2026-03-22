package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new t();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3435b;

    Scope(int i, String str) {
        aa.a(str, (Object) "scopeUri must not be null or empty");
        this.f3434a = i;
        this.f3435b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final String a() {
        return this.f3435b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f3435b.equals(((Scope) obj).f3435b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3435b.hashCode();
    }

    public final String toString() {
        return this.f3435b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3434a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
