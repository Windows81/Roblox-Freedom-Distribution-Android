package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new n();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CredentialPickerConfig f3347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f3350e;
    private final boolean f;
    private final String g;
    private final String h;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String[] f3353c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CredentialPickerConfig f3354d = new CredentialPickerConfig.a().a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3355e = false;
        private String f;
        private String g;

        public final a a(boolean z) {
            this.f3351a = z;
            return this;
        }

        public final HintRequest a() {
            if (this.f3353c == null) {
                this.f3353c = new String[0];
            }
            if (this.f3351a || this.f3352b || this.f3353c.length != 0) {
                return new HintRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public final a b(boolean z) {
            this.f3352b = z;
            return this;
        }
    }

    HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.f3346a = i;
        this.f3347b = (CredentialPickerConfig) aa.a(credentialPickerConfig);
        this.f3348c = z;
        this.f3349d = z2;
        this.f3350e = (String[]) aa.a(strArr);
        if (this.f3346a < 2) {
            this.f = true;
            this.g = null;
            this.h = null;
        } else {
            this.f = z3;
            this.g = str;
            this.h = str2;
        }
    }

    private HintRequest(a aVar) {
        this(2, aVar.f3354d, aVar.f3351a, aVar.f3352b, aVar.f3353c, aVar.f3355e, aVar.f, aVar.g);
    }

    public final CredentialPickerConfig a() {
        return this.f3347b;
    }

    public final boolean b() {
        return this.f3348c;
    }

    public final String[] c() {
        return this.f3350e;
    }

    public final boolean d() {
        return this.f;
    }

    public final String e() {
        return this.g;
    }

    public final String f() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) a(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f3349d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, c(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, d());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, e(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, f(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f3346a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
