package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzsg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzsg> CREATOR = new awk();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String[] f5817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f5818c;

    zzsg(String str, String[] strArr, String[] strArr2) {
        this.f5816a = str;
        this.f5817b = strArr;
        this.f5818c = strArr2;
    }

    public static zzsg a(avg avgVar) throws a {
        Map<String, String> mapB = avgVar.b();
        int size = mapB.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        Iterator<Map.Entry<String, String>> it = mapB.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return new zzsg(avgVar.e(), strArr, strArr2);
            }
            Map.Entry<String, String> next = it.next();
            strArr[i2] = next.getKey();
            strArr2[i2] = next.getValue();
            i = i2 + 1;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5816a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5817b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5818c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
