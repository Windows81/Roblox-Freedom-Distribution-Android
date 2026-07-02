package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.a;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
@cm
final class ayg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzjj f4623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4625c;

    ayg(ayb aybVar) {
        this(aybVar.a(), aybVar.c(), aybVar.b());
    }

    private ayg(zzjj zzjjVar, String str, int i) {
        this.f4623a = zzjjVar;
        this.f4624b = str;
        this.f4625c = i;
    }

    static ayg a(String str) throws IOException {
        String[] strArrSplit = str.split("\u0000");
        if (strArrSplit.length != 3) {
            throw new IOException("Incorrect field count for QueueSeed.");
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                String str2 = new String(Base64.decode(strArrSplit[0], 0), Constants.UTF8_NAME);
                int i = Integer.parseInt(strArrSplit[1]);
                byte[] bArrDecode = Base64.decode(strArrSplit[2], 0);
                parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
                parcelObtain.setDataPosition(0);
                return new ayg(zzjj.CREATOR.createFromParcel(parcelObtain), str2, i);
            } finally {
                parcelObtain.recycle();
            }
        } catch (a.C0078a | IllegalArgumentException | IllegalStateException e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "QueueSeed.decode");
            throw new IOException("Malformed QueueSeed encoding.", e);
        }
    }

    final String a() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                String strEncodeToString = Base64.encodeToString(this.f4624b.getBytes(Constants.UTF8_NAME), 0);
                String string2 = Integer.toString(this.f4625c);
                this.f4623a.writeToParcel(parcelObtain, 0);
                String strEncodeToString2 = Base64.encodeToString(parcelObtain.marshall(), 0);
                string = new StringBuilder(String.valueOf(strEncodeToString).length() + 2 + String.valueOf(string2).length() + String.valueOf(strEncodeToString2).length()).append(strEncodeToString).append("\u0000").append(string2).append("\u0000").append(strEncodeToString2).toString();
            } catch (UnsupportedEncodingException e) {
                jd.c("QueueSeed encode failed because UTF-8 is not available.");
                parcelObtain.recycle();
                string = "";
            }
            return string;
        } finally {
            parcelObtain.recycle();
        }
    }
}
