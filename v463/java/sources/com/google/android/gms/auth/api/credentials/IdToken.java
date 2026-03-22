package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3357b;

    public IdToken(String str, String str2) {
        aa.b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        aa.b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f3356a = str;
        this.f3357b = str2;
    }

    public final String a() {
        return this.f3356a;
    }

    public final String b() {
        return this.f3357b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
