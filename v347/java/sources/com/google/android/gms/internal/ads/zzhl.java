package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzhl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzhl> CREATOR = new amc();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f5796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5798d;
    private final String e;
    private final Bundle f;
    private final boolean g;
    private long h;

    zzhl(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2) {
        this.f5795a = str;
        this.f5796b = j;
        this.f5797c = str2 == null ? "" : str2;
        this.f5798d = str3 == null ? "" : str3;
        this.e = str4 == null ? "" : str4;
        this.f = bundle == null ? new Bundle() : bundle;
        this.g = z;
        this.h = j2;
    }

    public static zzhl a(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                jd.e(new StringBuilder(62).append("Expected 2 path parts for namespace and id, found :").append(pathSegments.size()).toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean zEquals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j = queryParameter2 != null ? Long.parseLong(queryParameter2) : 0L;
            Bundle bundle = new Bundle();
            for (String str3 : com.google.android.gms.ads.internal.aw.g().a(uri)) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzhl(queryParameter, j, host, str, str2, bundle, zEquals, 0L);
        } catch (NullPointerException | NumberFormatException e) {
            jd.c("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    public static zzhl a(String str) {
        return a(Uri.parse(str));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5795a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5796b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5797c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5798d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
