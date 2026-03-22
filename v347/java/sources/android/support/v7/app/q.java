package android.support.v7.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static q f1288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LocationManager f1290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f1291d = new a();

    static q a(Context context) {
        if (f1288a == null) {
            Context applicationContext = context.getApplicationContext();
            f1288a = new q(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f1288a;
    }

    q(Context context, LocationManager locationManager) {
        this.f1289b = context;
        this.f1290c = locationManager;
    }

    boolean a() {
        a aVar = this.f1291d;
        if (c()) {
            return aVar.f1292a;
        }
        Location locationB = b();
        if (locationB != null) {
            a(locationB);
            return aVar.f1292a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationA = android.support.v4.a.h.a(this.f1289b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        Location locationA2 = android.support.v4.a.h.a(this.f1289b, "android.permission.ACCESS_FINE_LOCATION") == 0 ? a("gps") : null;
        if (locationA2 != null && locationA != null) {
            return locationA2.getTime() > locationA.getTime() ? locationA2 : locationA;
        }
        if (locationA2 == null) {
            locationA2 = locationA;
        }
        return locationA2;
    }

    private Location a(String str) {
        try {
            if (this.f1290c.isProviderEnabled(str)) {
                return this.f1290c.getLastKnownLocation(str);
            }
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
        }
        return null;
    }

    private boolean c() {
        return this.f1291d.f > System.currentTimeMillis();
    }

    private void a(Location location) {
        long j;
        long j2;
        a aVar = this.f1291d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        p pVarA = p.a();
        pVarA.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = pVarA.f1285a;
        pVarA.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = pVarA.f1287c == 1;
        long j4 = pVarA.f1286b;
        long j5 = pVarA.f1285a;
        pVarA.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = pVarA.f1286b;
        if (j4 == -1 || j5 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            if (jCurrentTimeMillis > j5) {
                j2 = 0 + j6;
            } else if (jCurrentTimeMillis > j4) {
                j2 = 0 + j5;
            } else {
                j2 = 0 + j4;
            }
            j = j2 + 60000;
        }
        aVar.f1292a = z;
        aVar.f1293b = j3;
        aVar.f1294c = j4;
        aVar.f1295d = j5;
        aVar.e = j6;
        aVar.f = j;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f1293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f1294c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f1295d;
        long e;
        long f;

        a() {
        }
    }
}
