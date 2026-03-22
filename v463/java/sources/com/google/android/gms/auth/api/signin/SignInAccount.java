package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    private String f3387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GoogleSignInAccount f3388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    private String f3389c;

    SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f3388b = googleSignInAccount;
        this.f3387a = aa.a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.f3389c = aa.a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
    }

    @Nullable
    public final GoogleSignInAccount a() {
        return this.f3388b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f3387a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable) this.f3388b, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f3389c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
