package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzaig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaig> CREATOR = new hi();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5779b;

    public zzaig(com.google.android.gms.ads.reward.a aVar) {
        this(aVar.a(), aVar.b());
    }

    public zzaig(String str, int i) {
        this.f5778a = str;
        this.f5779b = i;
    }

    public static zzaig a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return a(new JSONArray(str));
        } catch (JSONException e) {
            return null;
        }
    }

    public static zzaig a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzaig(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaig)) {
            return false;
        }
        zzaig zzaigVar = (zzaig) obj;
        return com.google.android.gms.common.internal.v.a(this.f5778a, zzaigVar.f5778a) && com.google.android.gms.common.internal.v.a(Integer.valueOf(this.f5779b), Integer.valueOf(zzaigVar.f5779b));
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.v.a(this.f5778a, Integer.valueOf(this.f5779b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5778a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5779b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
