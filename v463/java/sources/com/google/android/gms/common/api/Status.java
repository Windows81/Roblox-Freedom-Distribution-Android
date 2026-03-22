package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.y;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class Status extends AbstractSafeParcelable implements l, ReflectedParcelable {
    private final int h;
    private final int i;
    private final String j;
    private final PendingIntent k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Status f3436a = new Status(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Status f3437b = new Status(14);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Status f3438c = new Status(8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Status f3439d = new Status(15);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Status f3440e = new Status(16);
    private static final Status g = new Status(17);
    public static final Status f = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new u();

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.h = i;
        this.i = i2;
        this.j = str;
        this.k = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public final String a() {
        return this.j;
    }

    public final void a(Activity activity, int i) throws IntentSender.SendIntentException {
        if (c()) {
            activity.startIntentSenderForResult(this.k.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    @Override // com.google.android.gms.common.api.l
    public final Status b() {
        return this;
    }

    public final boolean c() {
        return this.k != null;
    }

    public final boolean d() {
        return this.i <= 0;
    }

    public final int e() {
        return this.i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.h == status.h && this.i == status.i && y.a(this.j, status.j) && y.a(this.k, status.k);
    }

    public final String f() {
        String str = this.j;
        return str != null ? str : d.a(this.i);
    }

    public final int hashCode() {
        return y.a(Integer.valueOf(this.h), Integer.valueOf(this.i), this.j, this.k);
    }

    public final String toString() {
        return y.a(this).a("statusCode", f()).a("resolution", this.k).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, e());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.k, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
