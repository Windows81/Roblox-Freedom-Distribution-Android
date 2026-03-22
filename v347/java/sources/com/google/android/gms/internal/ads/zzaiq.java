package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzaiq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiq> CREATOR = new hr();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5783d;
    public final List<String> e;
    public final boolean f;
    public final boolean g;
    public final List<String> h;

    public zzaiq(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.f5780a = str;
        this.f5781b = str2;
        this.f5782c = z;
        this.f5783d = z2;
        this.e = list;
        this.f = z3;
        this.g = z4;
        this.h = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzaiq a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new zzaiq(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), lh.a(jSONObject.optJSONArray("allowed_headers"), null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), lh.a(jSONObject.optJSONArray("webview_permissions"), null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5780a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5781b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5782c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5783d);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.g);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 9, this.h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
