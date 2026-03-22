package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {
    public static <T extends SafeParcelable> void a(T t, Intent intent, String str) {
        intent.putExtra(str, a(t));
    }

    public static <T extends SafeParcelable> byte[] a(T t) {
        Parcel parcelObtain = Parcel.obtain();
        t.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
