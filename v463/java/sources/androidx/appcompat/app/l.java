package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LocationManager f690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f691d = new a();

    static l a(Context context) {
        if (f688a == null) {
            Context applicationContext = context.getApplicationContext();
            f688a = new l(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f688a;
    }

    l(Context context, LocationManager locationManager) {
        this.f689b = context;
        this.f690c = locationManager;
    }

    boolean a() {
        a aVar = this.f691d;
        if (c()) {
            return aVar.f692a;
        }
        Location locationB = b();
        if (locationB != null) {
            a(locationB);
            return aVar.f692a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    private Location b() {
        Location locationA = androidx.core.a.c.a(this.f689b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        Location locationA2 = androidx.core.a.c.a(this.f689b, "android.permission.ACCESS_FINE_LOCATION") == 0 ? a("gps") : null;
        return (locationA2 == null || locationA == null) ? locationA2 != null ? locationA2 : locationA : locationA2.getTime() > locationA.getTime() ? locationA2 : locationA;
    }

    private Location a(String str) {
        try {
            if (this.f690c.isProviderEnabled(str)) {
                return this.f690c.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e2) {
            Log.d("TwilightManager", "Failed to get last known location", e2);
            return null;
        }
    }

    private boolean c() {
        return this.f691d.f > System.currentTimeMillis();
    }

    private void a(Location location) {
        long j;
        a aVar = this.f691d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        k kVarA = k.a();
        kVarA.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = kVarA.f685a;
        kVarA.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = kVarA.f687c == 1;
        long j3 = kVarA.f686b;
        long j4 = kVarA.f685a;
        boolean z2 = z;
        kVarA.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = kVarA.f686b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            j = (jCurrentTimeMillis > j4 ? 0 + j5 : jCurrentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.f692a = z2;
        aVar.f693b = j2;
        aVar.f694c = j3;
        aVar.f695d = j4;
        aVar.f696e = j5;
        aVar.f = j;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f694c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f695d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f696e;
        long f;

        a() {
        }
    }
}
