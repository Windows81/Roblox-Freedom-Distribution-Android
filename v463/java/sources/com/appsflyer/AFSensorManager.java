package com.appsflyer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.appsflyer.internal.r;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AFSensorManager {
    public static volatile AFSensorManager sInstance;

    /* JADX INFO: renamed from: ȷ, reason: contains not printable characters */
    private static final BitSet f39 = new BitSet(6);

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private static final Handler f40 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    final Handler f41;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final SensorManager f45;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    boolean f48;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    boolean f52;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    final Object f49 = new Object();

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    final Map<r, r> f43 = new HashMap(f39.size());

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private final Map<r, Map<String, Object>> f53 = new ConcurrentHashMap(f39.size());

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    final Runnable f46 = new Runnable() { // from class: com.appsflyer.AFSensorManager.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f49) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                try {
                    for (Sensor sensor : aFSensorManager.f45.getSensorList(-1)) {
                        if (AFSensorManager.m27(sensor.getType())) {
                            r rVar = new r(sensor.getType(), sensor.getName(), sensor.getVendor());
                            if (!aFSensorManager.f43.containsKey(rVar)) {
                                aFSensorManager.f43.put(rVar, rVar);
                            }
                            aFSensorManager.f45.registerListener(aFSensorManager.f43.get(rVar), sensor, 0);
                        }
                    }
                } catch (Throwable unused) {
                }
                aFSensorManager.f52 = true;
                AFSensorManager.this.f41.postDelayed(AFSensorManager.this.f44, 100L);
                AFSensorManager.this.f48 = true;
            }
        }
    };

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    final Runnable f51 = new Runnable() { // from class: com.appsflyer.AFSensorManager.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f49) {
                AFSensorManager.this.m30();
            }
        }
    };

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    final Runnable f50 = new Runnable() { // from class: com.appsflyer.AFSensorManager.3
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f49) {
                if (AFSensorManager.this.f48) {
                    AFSensorManager.this.f41.removeCallbacks(AFSensorManager.this.f46);
                    AFSensorManager.this.f41.removeCallbacks(AFSensorManager.this.f51);
                    AFSensorManager.this.m30();
                    AFSensorManager.this.f48 = false;
                }
            }
        }
    };

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    int f42 = 1;

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    long f47 = 0;

    /* JADX INFO: renamed from: ɨ, reason: contains not printable characters */
    private final Runnable f44 = new Runnable() { // from class: com.appsflyer.AFSensorManager.4
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f49) {
                if (AFSensorManager.this.f42 == 0) {
                    AFSensorManager.m28(AFSensorManager.this);
                }
                AFSensorManager.this.f41.postDelayed(AFSensorManager.this.f51, ((long) AFSensorManager.this.f42) * 500);
            }
        }
    };

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    static /* synthetic */ int m28(AFSensorManager aFSensorManager) {
        aFSensorManager.f42 = 1;
        return 1;
    }

    static {
        f39.set(1);
        f39.set(2);
        f39.set(4);
    }

    private AFSensorManager(SensorManager sensorManager, Handler handler) {
        this.f45 = sensorManager;
        this.f41 = handler;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    static AFSensorManager m26(Context context) {
        if (sInstance != null) {
            return sInstance;
        }
        return m23((SensorManager) context.getApplicationContext().getSystemService("sensor"), f40);
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static AFSensorManager m23(SensorManager sensorManager, Handler handler) {
        if (sInstance == null) {
            synchronized (AFSensorManager.class) {
                if (sInstance == null) {
                    sInstance = new AFSensorManager(sensorManager, handler);
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    static boolean m27(int i) {
        return i >= 0 && f39.get(i);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    final void m30() {
        try {
            if (!this.f43.isEmpty()) {
                for (r rVar : this.f43.values()) {
                    this.f45.unregisterListener(rVar);
                    rVar.m191(this.f53, true);
                }
            }
        } catch (Throwable unused) {
        }
        this.f42 = 0;
        this.f52 = false;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final List<Map<String, Object>> m29() {
        Iterator<r> it = this.f43.values().iterator();
        while (it.hasNext()) {
            it.next().m191(this.f53, true);
        }
        Map<r, Map<String, Object>> map = this.f53;
        if (map == null || map.isEmpty()) {
            return new CopyOnWriteArrayList(Collections.emptyList());
        }
        return new CopyOnWriteArrayList(this.f53.values());
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    final List<Map<String, Object>> m31() {
        synchronized (this.f49) {
            if (!this.f43.isEmpty() && this.f52) {
                Iterator<r> it = this.f43.values().iterator();
                while (it.hasNext()) {
                    it.next().m191(this.f53, false);
                }
            }
            if (this.f53.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.f53.values());
        }
    }
}
