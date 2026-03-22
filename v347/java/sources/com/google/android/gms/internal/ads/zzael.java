package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class zzael extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzael> CREATOR = new dp();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<String> f5767b;

    public zzael() {
        this(false, Collections.emptyList());
    }

    public zzael(boolean z, List<String> list) {
        this.f5766a = z;
        this.f5767b = list;
    }

    public static zzael a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new zzael();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("reporting_urls");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    arrayList.add(jSONArrayOptJSONArray.getString(i));
                } catch (JSONException e) {
                    jd.c("Error grabbing url from json.", e);
                }
            }
        }
        return new zzael(jSONObject.optBoolean("enable_protection"), arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5766a);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, this.f5767b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
