package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new u();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GoogleSignInOptions f3395b;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f3394a = aa.a(str);
        this.f3395b = googleSignInOptions;
    }

    public final GoogleSignInOptions a() {
        return this.f3395b;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (this.f3394a.equals(signInConfiguration.f3394a)) {
                if (this.f3395b == null) {
                    if (signInConfiguration.f3395b == null) {
                        return true;
                    }
                } else if (this.f3395b.equals(signInConfiguration.f3395b)) {
                    return true;
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    public final int hashCode() {
        return new b().a(this.f3394a).a(this.f3395b).a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3394a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) this.f3395b, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
