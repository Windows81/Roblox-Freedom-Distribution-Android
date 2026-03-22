package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.y;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PendingIntent f3418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3419e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConnectionResult f3415a = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new b();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f3416b = i;
        this.f3417c = i2;
        this.f3418d = pendingIntent;
        this.f3419e = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    static String a(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return Payload.RESPONSE_DEVELOPER_ERROR;
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return Payload.RESPONSE_TIMEOUT;
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean a() {
        return (this.f3417c == 0 || this.f3418d == null) ? false : true;
    }

    public final boolean b() {
        return this.f3417c == 0;
    }

    public final int c() {
        return this.f3417c;
    }

    public final PendingIntent d() {
        return this.f3418d;
    }

    public final String e() {
        return this.f3419e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f3417c == connectionResult.f3417c && y.a(this.f3418d, connectionResult.f3418d) && y.a(this.f3419e, connectionResult.f3419e);
    }

    public final int hashCode() {
        return y.a(Integer.valueOf(this.f3417c), this.f3418d, this.f3419e);
    }

    public final String toString() {
        return y.a(this).a("statusCode", a(this.f3417c)).a("resolution", this.f3418d).a("message", this.f3419e).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3416b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) d(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, e(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
