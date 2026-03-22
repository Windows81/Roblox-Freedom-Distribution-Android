package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Bundle f5299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f5300b;

    public RemoteMessage(Bundle bundle) {
        this.f5299a = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5299a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }

    public final Map<String, String> a() {
        if (this.f5300b == null) {
            Bundle bundle = this.f5299a;
            androidx.c.a aVar = new androidx.c.a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        aVar.put(str, str2);
                    }
                }
            }
            this.f5300b = aVar;
        }
        return this.f5300b;
    }
}
