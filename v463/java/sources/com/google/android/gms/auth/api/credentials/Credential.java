package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.y;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nonnull
    private final String f3318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f3320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nonnull
    private final List<IdToken> f3321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3322e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3323a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f3324b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Uri f3325c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<IdToken> f3326d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f3327e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;

        public a(String str) {
            this.f3323a = str;
        }

        public a a(String str) {
            this.f3324b = str;
            return this;
        }

        public Credential a() {
            return new Credential(this.f3323a, this.f3324b, this.f3325c, this.f3326d, this.f3327e, this.f, this.g, this.h, this.i, this.j);
        }

        public a b(String str) {
            this.f3327e = str;
            return this;
        }
    }

    Credential(String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        String strTrim = ((String) aa.a(str, (Object) "credential identifier cannot be null")).trim();
        aa.a(strTrim, (Object) "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            boolean z = false;
            if (!TextUtils.isEmpty(str4)) {
                Uri uri2 = Uri.parse(str4);
                if (uri2.isAbsolute() && uri2.isHierarchical() && !TextUtils.isEmpty(uri2.getScheme()) && !TextUtils.isEmpty(uri2.getAuthority()) && ("http".equalsIgnoreCase(uri2.getScheme()) || "https".equalsIgnoreCase(uri2.getScheme()))) {
                    z = true;
                }
            }
            if (!Boolean.valueOf(z).booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.f3319b = str2;
        this.f3320c = uri;
        this.f3321d = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f3318a = strTrim;
        this.f3322e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = str8;
    }

    @Nonnull
    public String a() {
        return this.f3318a;
    }

    public String b() {
        return this.f3319b;
    }

    public Uri c() {
        return this.f3320c;
    }

    @Nonnull
    public List<IdToken> d() {
        return this.f3321d;
    }

    public String e() {
        return this.f3322e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f3318a, credential.f3318a) && TextUtils.equals(this.f3319b, credential.f3319b) && y.a(this.f3320c, credential.f3320c) && TextUtils.equals(this.f3322e, credential.f3322e) && TextUtils.equals(this.f, credential.f) && TextUtils.equals(this.g, credential.g);
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.f;
    }

    public String h() {
        return this.i;
    }

    public int hashCode() {
        return y.a(this.f3318a, this.f3319b, this.f3320c, this.f3322e, this.f, this.g);
    }

    public String i() {
        return this.j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, d(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, e(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, g(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, f(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, h(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, i(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
