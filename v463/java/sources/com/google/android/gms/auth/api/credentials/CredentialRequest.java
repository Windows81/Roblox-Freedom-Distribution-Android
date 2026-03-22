package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f3338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CredentialPickerConfig f3339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CredentialPickerConfig f3340e;
    private final boolean f;
    private final String g;
    private final String h;
    private final boolean i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f3342b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CredentialPickerConfig f3343c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CredentialPickerConfig f3344d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3345e = false;
        private boolean f = false;
        private String g = null;
        private String h;

        public final a a(boolean z) {
            this.f3341a = z;
            return this;
        }

        public final CredentialRequest a() {
            if (this.f3342b == null) {
                this.f3342b = new String[0];
            }
            if (this.f3341a || this.f3342b.length != 0) {
                return new CredentialRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }
    }

    CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.f3336a = i;
        this.f3337b = z;
        this.f3338c = (String[]) aa.a(strArr);
        this.f3339d = credentialPickerConfig == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig;
        this.f3340e = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig2;
        if (i < 3) {
            this.f = true;
            this.g = null;
            this.h = null;
        } else {
            this.f = z2;
            this.g = str;
            this.h = str2;
        }
        this.i = z3;
    }

    private CredentialRequest(a aVar) {
        this(4, aVar.f3341a, aVar.f3342b, aVar.f3343c, aVar.f3344d, aVar.f3345e, aVar.g, aVar.h, false);
    }

    public final boolean a() {
        return this.f3337b;
    }

    public final String[] b() {
        return this.f3338c;
    }

    public final CredentialPickerConfig c() {
        return this.f3339d;
    }

    public final CredentialPickerConfig d() {
        return this.f3340e;
    }

    public final boolean e() {
        return this.f;
    }

    public final String f() {
        return this.g;
    }

    public final String g() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) d(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, e());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, f(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, g(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f3336a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
