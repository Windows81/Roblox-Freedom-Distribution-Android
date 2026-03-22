package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    private final boolean f3331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3332e;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3333a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3334b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3335c = 1;

        public CredentialPickerConfig a() {
            return new CredentialPickerConfig(this);
        }
    }

    CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.f3328a = i;
        this.f3329b = z;
        this.f3330c = z2;
        if (i < 2) {
            this.f3331d = z3;
            this.f3332e = z3 ? 3 : 1;
        } else {
            this.f3331d = i2 == 3;
            this.f3332e = i2;
        }
    }

    private CredentialPickerConfig(a aVar) {
        this(2, aVar.f3333a, aVar.f3334b, false, aVar.f3335c);
    }

    public final boolean a() {
        return this.f3329b;
    }

    public final boolean b() {
        return this.f3330c;
    }

    @Deprecated
    public final boolean c() {
        return this.f3332e == 3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f3332e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f3328a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
