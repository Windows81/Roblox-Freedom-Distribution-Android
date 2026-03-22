package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzer extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzer> CREATOR = new dl();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f4723a;

    zzer(Bundle bundle) {
        this.f4723a = bundle;
    }

    public final int a() {
        return this.f4723a.size();
    }

    final Object a(String str) {
        return this.f4723a.get(str);
    }

    public final Bundle b() {
        return new Bundle(this.f4723a);
    }

    final Long b(String str) {
        return Long.valueOf(this.f4723a.getLong(str));
    }

    final Double c(String str) {
        return Double.valueOf(this.f4723a.getDouble(str));
    }

    final String d(String str) {
        return this.f4723a.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new dk(this);
    }

    public final String toString() {
        return this.f4723a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
