package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class r implements SensorEventListener {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private final String f281;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private long f282;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private final int f283;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private final float[][] f284 = new float[2][];

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private final long[] f285 = new long[2];

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private final String f286;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private final int f287;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private double f288;

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    public r(int i, String str, String str2) {
        this.f283 = i;
        this.f281 = str == null ? "" : str;
        str2 = str2 == null ? "" : str2;
        this.f286 = str2;
        this.f287 = ((((i + 31) * 31) + this.f281.hashCode()) * 31) + str2.hashCode();
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static double m185(float[] fArr, float[] fArr2) {
        int iMin = Math.min(fArr.length, fArr2.length);
        double dPow = 0.0d;
        for (int i = 0; i < iMin; i++) {
            dPow += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(dPow);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static boolean m189(Sensor sensor) {
        return (sensor == null || sensor.getName() == null || sensor.getVendor() == null) ? false : true;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static List<Float> m187(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null || sensorEvent.values == null || !m189(sensorEvent.sensor)) {
            return;
        }
        int type = sensorEvent.sensor.getType();
        String name = sensorEvent.sensor.getName();
        String vendor = sensorEvent.sensor.getVendor();
        long j = sensorEvent.timestamp;
        float[] fArr = sensorEvent.values;
        if (m188(type, name, vendor)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            float[][] fArr2 = this.f284;
            float[] fArr3 = fArr2[0];
            if (fArr3 == null) {
                fArr2[0] = Arrays.copyOf(fArr, fArr.length);
                this.f285[0] = jCurrentTimeMillis;
                return;
            }
            float[] fArr4 = fArr2[1];
            if (fArr4 == null) {
                float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
                this.f284[1] = fArrCopyOf;
                this.f285[1] = jCurrentTimeMillis;
                this.f288 = m185(fArr3, fArrCopyOf);
                return;
            }
            if (50000000 <= j - this.f282) {
                this.f282 = j;
                if (Arrays.equals(fArr4, fArr)) {
                    this.f285[1] = jCurrentTimeMillis;
                    return;
                }
                double dM185 = m185(fArr3, fArr);
                if (dM185 > this.f288) {
                    this.f284[1] = Arrays.copyOf(fArr, fArr.length);
                    this.f285[1] = jCurrentTimeMillis;
                    this.f288 = dM185;
                }
            }
        }
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public final void m191(Map<r, Map<String, Object>> map, boolean z) {
        if (m186()) {
            map.put(this, m190());
            if (z) {
                int length = this.f284.length;
                for (int i = 0; i < length; i++) {
                    this.f284[i] = null;
                }
                int length2 = this.f285.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f285[i2] = 0;
                }
                this.f288 = 0.0d;
                this.f282 = 0L;
                return;
            }
            return;
        }
        if (map.containsKey(this)) {
            return;
        }
        map.put(this, m190());
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private boolean m188(int i, String str, String str2) {
        return this.f283 == i && this.f281.equals(str) && this.f286.equals(str2);
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private Map<String, Object> m190() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.f283));
        concurrentHashMap.put("sN", this.f281);
        concurrentHashMap.put("sV", this.f286);
        float[] fArr = this.f284[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", m187(fArr));
        }
        float[] fArr2 = this.f284[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", m187(fArr2));
        }
        return concurrentHashMap;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private boolean m186() {
        return this.f284[0] != null;
    }

    public final int hashCode() {
        return this.f287;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return m188(rVar.f283, rVar.f281, rVar.f286);
    }
}
