package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class ox implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SensorManager f5401a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Display f5403c;

    @GuardedBy("mSensorThreadLock")
    private float[] f;
    private Handler g;
    private oz h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f5404d = new float[9];
    private final float[] e = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5402b = new Object();

    ox(Context context) {
        this.f5401a = (SensorManager) context.getSystemService("sensor");
        this.f5403c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private final void a(int i, int i2) {
        float f = this.e[i];
        this.e[i] = this.e[i2];
        this.e[i2] = f;
    }

    final void a() {
        if (this.g != null) {
            return;
        }
        Sensor defaultSensor = this.f5401a.getDefaultSensor(11);
        if (defaultSensor == null) {
            jd.c("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.g = new Handler(handlerThread.getLooper());
        if (this.f5401a.registerListener(this, defaultSensor, 0, this.g)) {
            return;
        }
        jd.c("SensorManager.registerListener failed.");
        b();
    }

    final void a(oz ozVar) {
        this.h = ozVar;
    }

    final boolean a(float[] fArr) {
        boolean z = false;
        synchronized (this.f5402b) {
            if (this.f != null) {
                System.arraycopy(this.f, 0, fArr, 0, this.f.length);
                z = true;
            }
        }
        return z;
    }

    final void b() {
        if (this.g == null) {
            return;
        }
        this.f5401a.unregisterListener(this);
        this.g.post(new oy(this));
        this.g = null;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.f5402b) {
            if (this.f == null) {
                this.f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f5404d, fArr);
        switch (this.f5403c.getRotation()) {
            case 1:
                SensorManager.remapCoordinateSystem(this.f5404d, 2, 129, this.e);
                break;
            case 2:
                SensorManager.remapCoordinateSystem(this.f5404d, 129, 130, this.e);
                break;
            case 3:
                SensorManager.remapCoordinateSystem(this.f5404d, 130, 1, this.e);
                break;
            default:
                System.arraycopy(this.f5404d, 0, this.e, 0, 9);
                break;
        }
        a(1, 3);
        a(2, 6);
        a(5, 7);
        synchronized (this.f5402b) {
            System.arraycopy(this.e, 0, this.f, 0, 9);
        }
        if (this.h != null) {
            this.h.a();
        }
    }
}
