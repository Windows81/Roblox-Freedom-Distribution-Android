package com.roblox.engine;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Point;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import com.roblox.engine.c;
import com.roblox.engine.d;
import com.roblox.engine.jni.NativeInputInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements SensorEventListener, View.OnTouchListener, c.a, d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SurfaceView f7939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GestureDetector f7941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GestureDetectorOnGestureListenerC0134b f7942d;
    private com.roblox.engine.c e;
    private com.roblox.engine.d f;
    private SensorManager h;
    private Sensor i;
    private Sensor j;
    private OrientationEventListener k;
    private InputManager v;
    private Activity w;
    private a x;
    private boolean y;
    private SparseArray<d> g = new SparseArray<>();
    private boolean l = false;
    private float m = 0.0f;
    private float n = 0.0f;
    private final float[] o = new float[4];
    private final float[] p = new float[9];
    private final float[] q = new float[3];
    private final float[] r = new float[3];
    private final float[] s = new float[3];
    private final SparseArray t = new SparseArray();
    private final Handler u = new c(this);

    public interface a {
        float getCurrentScreenDensity();

        boolean isSurfaceCreated();
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7955c;
        private float e;
        private float f;
        private int g;

        d() {
        }

        public float a() {
            return this.e;
        }

        public void a(float f) {
            this.f7953a = this.e;
            this.e = f;
        }

        public float b() {
            return this.f;
        }

        public void b(float f) {
            this.f7954b = this.f;
            this.f = f;
        }

        public int c() {
            return this.g;
        }

        public void a(int i) {
            this.f7955c = this.g;
            this.g = i;
        }
    }

    public b(Activity activity, SurfaceView surfaceView, a aVar, boolean z) {
        int i = 3;
        this.f7939a = null;
        this.f7940b = true;
        this.f7941c = null;
        this.f7942d = null;
        this.e = null;
        this.f = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.f7939a = surfaceView;
        this.w = activity;
        this.f7940b = activity.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        this.x = aVar;
        this.y = z;
        if (this.f7940b) {
            this.f7942d = new GestureDetectorOnGestureListenerC0134b();
            this.f7941c = new GestureDetector(activity, this.f7942d);
            this.e = new com.roblox.engine.c(this);
            this.f = new com.roblox.engine.d(this);
        }
        a(surfaceView);
        this.h = (SensorManager) activity.getBaseContext().getSystemService("sensor");
        if (Build.VERSION.SDK_INT >= 19) {
            this.v = (InputManager) activity.getBaseContext().getSystemService("input");
        }
        this.i = this.h.getDefaultSensor(1);
        this.j = this.h.getDefaultSensor(11);
        if (this.j != null) {
            NativeInputInterface.nativeSetGyroscopeEnabled(true);
        }
        if (this.i != null) {
            NativeInputInterface.nativeSetAccelerometerEnabled(true);
        }
        if (b()) {
            this.k = new OrientationEventListener(activity, i) { // from class: com.roblox.engine.b.1
                @Override // android.view.OrientationEventListener
                public void onOrientationChanged(int i2) {
                    b.this.d();
                }
            };
            if (this.k != null && this.k.canDetectOrientation()) {
                this.k.enable();
            }
        }
    }

    private boolean b() {
        return this.y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float c() {
        if (this.x != null) {
            return this.x.getCurrentScreenDensity();
        }
        return 1.0f;
    }

    public void a() {
        this.h.unregisterListener(this);
    }

    public void a(boolean z) {
        if (!this.l) {
            this.l = z;
        }
        if (this.l) {
            this.h.registerListener(this, this.j, 1);
            this.h.registerListener(this, this.i, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int i = 3;
        if (this.w != null) {
            WindowManager windowManager = this.w.getWindowManager();
            int rotation = windowManager.getDefaultDisplay().getRotation();
            Point point = new Point(0, 0);
            windowManager.getDefaultDisplay().getSize(point);
            if (point.x >= point.y) {
                if (rotation == 0 || rotation == 2) {
                    i = rotation == 2 ? 0 : 1;
                } else {
                    i = rotation == 3 ? 0 : 1;
                }
            }
            NativeInputInterface.nativeUpdateScreenOrientation(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        long[] jArr = (long[]) this.t.get(i);
        if (jArr == null) {
            jArr = new long[1];
            this.t.put(i, jArr);
            b(i);
            NativeInputInterface.nativeGamepadConnectEvent(i);
        }
        jArr[0] = SystemClock.elapsedRealtime();
    }

    private void b(int i) {
        boolean[] zArrC = c(i);
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < 14; i2++) {
            int i3 = 0;
            switch (i2) {
                case 0:
                    i3 = 96;
                    break;
                case 1:
                    i3 = 97;
                    break;
                case 2:
                    i3 = 99;
                    break;
                case 3:
                    i3 = 100;
                    break;
                case 4:
                    i3 = 19;
                    break;
                case 5:
                    i3 = 20;
                    break;
                case 6:
                    i3 = 21;
                    break;
                case 7:
                    i3 = 22;
                    break;
                case 8:
                    i3 = 103;
                    break;
                case 9:
                    i3 = 102;
                    break;
                case 10:
                    i3 = 106;
                    break;
                case 11:
                    i3 = 107;
                    break;
                case 12:
                    i3 = 109;
                    break;
                case 13:
                    i3 = 108;
                    break;
            }
            if (i2 < zArrC.length) {
                map.put(i3, Boolean.valueOf(zArrC[i2]));
            } else {
                map.put(i3, false);
            }
        }
        map.put(0, false);
        map.put(1, false);
        map.put(11, false);
        map.put(14, false);
        map.put(23, false);
        map.put(22, false);
        map.put(17, false);
        map.put(18, false);
        map.put(15, false);
        map.put(16, false);
        InputDevice device = InputDevice.getDevice(i);
        if (device != null) {
            Iterator<InputDevice.MotionRange> it = device.getMotionRanges().iterator();
            while (it.hasNext()) {
                map.put(Integer.valueOf(it.next().getAxis()), true);
            }
        }
        Iterator it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            NativeInputInterface.nativeSetGamepadSupportedKey(i, ((Integer) entry.getKey()).intValue(), ((Boolean) entry.getValue()).booleanValue());
            it2.remove();
        }
    }

    private boolean[] c(int i) {
        boolean[] zArr = new boolean[14];
        int[] iArr = {96, 97, 99, 100, 19, 20, 21, 22, 103, 102, 106, 107, 109, 108};
        if (Build.VERSION.SDK_INT >= 19) {
            InputDevice inputDevice = this.v.getInputDevice(i);
            if (inputDevice != null) {
                return inputDevice.hasKeys(iArr);
            }
            return zArr;
        }
        for (int i2 = 0; i2 < zArr.length; i2++) {
            zArr[i2] = true;
        }
        return zArr;
    }

    @TargetApi(23)
    public boolean a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 7 || motionEvent.getActionMasked() == 2) {
            float x = motionEvent.getX() / c();
            float y = motionEvent.getY() / c();
            float f = x - this.m;
            float f2 = y - this.n;
            this.m = x;
            this.n = y;
            NativeInputInterface.nativePassMouseMove(this.m, this.n, f, f2);
            return true;
        }
        if (motionEvent.getActionMasked() == 11) {
            NativeInputInterface.nativePassMouseButton(this.m, this.n, true, motionEvent.getActionButton() - 1);
            return true;
        }
        if (motionEvent.getActionMasked() == 12) {
            NativeInputInterface.nativePassMouseButton(this.m, this.n, false, motionEvent.getActionButton() - 1);
            return true;
        }
        if (motionEvent.getActionMasked() != 8) {
            return motionEvent.getActionMasked() == 0;
        }
        NativeInputInterface.nativePassMouseWheel(this.m, this.n, motionEvent.getAxisValue(9));
        return true;
    }

    private void a(SurfaceView surfaceView) {
        this.u.sendEmptyMessageDelayed(101, 3000L);
        surfaceView.setOnKeyListener(new View.OnKeyListener() { // from class: com.roblox.engine.b.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                switch (i) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 96:
                    case 97:
                    case 99:
                    case 100:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case 108:
                    case 109:
                        break;
                    case 82:
                        InputDevice device = keyEvent.getDevice();
                        if (device == null) {
                            return false;
                        }
                        if (((device.getSources() & 16778257) == 16778257) && Build.VERSION.SDK_INT >= 19) {
                            boolean[] zArr = new boolean[1];
                            if (!device.hasKeys(108)[0]) {
                                i = 108;
                            }
                        }
                        if (i == 82) {
                            return false;
                        }
                        break;
                    default:
                        return false;
                }
                if (keyEvent.getSource() != 1025 && keyEvent.getSource() != 16777232) {
                    return false;
                }
                int i2 = keyEvent.getAction() == 0 ? 1 : 0;
                int deviceId = keyEvent.getDeviceId();
                b.this.a(deviceId);
                NativeInputInterface.nativeGamepadButtonEvent(deviceId, i, i2);
                return true;
            }
        });
        surfaceView.setOnGenericMotionListener(new View.OnGenericMotionListener() { // from class: com.roblox.engine.b.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float[] f7945a = new float[8];

            private float a(MotionEvent motionEvent, InputDevice inputDevice, int i, int i2) {
                InputDevice.MotionRange motionRange = inputDevice.getMotionRange(i, motionEvent.getSource());
                if (motionRange != null) {
                    float flat = motionRange.getFlat();
                    float axisValue = i2 < 0 ? motionEvent.getAxisValue(i) : motionEvent.getHistoricalAxisValue(i, i2);
                    if (Math.abs(axisValue) > flat) {
                        return axisValue;
                    }
                }
                return 0.0f;
            }

            private void a(MotionEvent motionEvent, int i) {
                InputDevice device = motionEvent.getDevice();
                if (device != null) {
                    this.f7945a[0] = a(motionEvent, device, 0, i);
                    this.f7945a[1] = a(motionEvent, device, 1, i);
                    this.f7945a[2] = a(motionEvent, device, 11, i);
                    this.f7945a[3] = a(motionEvent, device, 14, i);
                    this.f7945a[4] = Math.max(a(motionEvent, device, 17, i), a(motionEvent, device, 23, i));
                    this.f7945a[5] = Math.max(a(motionEvent, device, 18, i), a(motionEvent, device, 22, i));
                    this.f7945a[6] = a(motionEvent, device, 15, i);
                    this.f7945a[7] = a(motionEvent, device, 16, i);
                }
            }

            @Override // android.view.View.OnGenericMotionListener
            public boolean onGenericMotion(View view, MotionEvent motionEvent) {
                if (motionEvent.getSource() == 8194 || motionEvent.getSource() == 1048584) {
                    return b.this.a(motionEvent);
                }
                if (motionEvent.getSource() != 1025 && motionEvent.getSource() != 16777232) {
                    return false;
                }
                int historySize = motionEvent.getHistorySize();
                for (int i = 0; i < historySize; i++) {
                    a(motionEvent, i);
                }
                a(motionEvent, -1);
                int deviceId = motionEvent.getDeviceId();
                b.this.a(deviceId);
                for (int i2 = 0; i2 < this.f7945a.length; i2++) {
                    switch (i2) {
                        case 0:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 0, this.f7945a[0], -this.f7945a[1], 0.0f);
                            break;
                        case 1:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 1, this.f7945a[0], -this.f7945a[1], 0.0f);
                            break;
                        case 2:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 11, this.f7945a[2], -this.f7945a[3], 0.0f);
                            break;
                        case 3:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 14, this.f7945a[2], -this.f7945a[3], 0.0f);
                            break;
                        case 4:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 17, 0.0f, 0.0f, this.f7945a[4]);
                            break;
                        case 5:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 18, 0.0f, 0.0f, this.f7945a[5]);
                            break;
                        case 6:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 15, 0.0f, 0.0f, this.f7945a[6]);
                            break;
                        case 7:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 16, 0.0f, 0.0f, -this.f7945a[7]);
                            break;
                    }
                }
                return true;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0201  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 534
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.engine.b.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: renamed from: com.roblox.engine.b$b, reason: collision with other inner class name */
    private final class GestureDetectorOnGestureListenerC0134b implements GestureDetector.OnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7948b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7950d;
        private int e;
        private int f;
        private int g;

        private GestureDetectorOnGestureListenerC0134b() {
            this.f7947a = -1;
            this.f7948b = -1;
            this.f7950d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            try {
                float fC = b.this.c();
                int x = (int) (motionEvent2.getX() / fC);
                int y = (int) (motionEvent2.getY() / fC);
                int x2 = (int) (motionEvent.getX() / fC);
                float y2 = y - ((int) (motionEvent.getY() / fC));
                float f3 = x - x2;
                if (Math.abs(f3) > Math.abs(y2)) {
                    if (Math.abs(f3) > 50.0f && Math.abs(f) > 50.0f) {
                        if (f3 > 0.0f) {
                            b.this.a(x, y);
                        } else {
                            b.this.c(x, y);
                        }
                    }
                } else if (Math.abs(y2) > 50.0f && Math.abs(f2) > 50.0f) {
                    if (y2 > 0.0f) {
                        b.this.b(x, y);
                    } else {
                        b.this.d(x, y);
                    }
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            float fC = b.this.c();
            NativeInputInterface.nativePassTapGesture((int) (motionEvent.getX() / fC), (int) (motionEvent.getY() / fC));
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            boolean z = false;
            if (this.f7948b == -1) {
                z = true;
            }
            this.f7948b = motionEvent2.getPointerId(motionEvent2.getActionIndex());
            float fC = b.this.c();
            this.f7950d = (int) (motionEvent2.getX() / fC);
            this.e = (int) (motionEvent2.getY() / fC);
            int x = (int) (motionEvent.getX() / fC);
            int y = (int) (motionEvent.getY() / fC);
            this.f = this.f7950d - x;
            this.g = this.e - y;
            if (z) {
                NativeInputInterface.nativePassPanGesture(0, this.f7950d, this.e, this.f, this.g, 0.0f);
                return false;
            }
            NativeInputInterface.nativePassPanGesture(1, this.f7950d, this.e, this.f, this.g, 0.0f);
            return false;
        }

        public void a() {
            this.f7948b = -1;
            NativeInputInterface.nativePassPanGesture(2, this.f7950d, this.e, this.f, this.g, 0.0f);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            this.f7947a = motionEvent.getPointerId(motionEvent.getActionIndex());
            float fC = b.this.c();
            NativeInputInterface.nativePassLongPressGesture(0, motionEvent.getX() / fC, motionEvent.getY() / fC);
        }
    }

    public void a(int i, int i2) {
        NativeInputInterface.nativePassSwipeGesture(0, i, i2);
    }

    public void b(int i, int i2) {
        NativeInputInterface.nativePassSwipeGesture(1, i, i2);
    }

    public void c(int i, int i2) {
        NativeInputInterface.nativePassSwipeGesture(2, i, i2);
    }

    public void d(int i, int i2) {
        NativeInputInterface.nativePassSwipeGesture(3, i, i2);
    }

    @Override // com.roblox.engine.c.a
    public void a(com.roblox.engine.c cVar) {
        float fA = cVar.a();
        int iB = cVar.b();
        Point pointC = cVar.c();
        Point pointD = cVar.d();
        NativeInputInterface.nativePassRotateGesture(iB, fA, 0.0f, pointC.x, pointC.y, pointD.x, pointD.y);
    }

    @Override // com.roblox.engine.d.a
    public void a(com.roblox.engine.d dVar) {
        Point pointC = dVar.c();
        Point pointD = dVar.d();
        float fB = dVar.b();
        int iA = dVar.a();
        float fC = c();
        NativeInputInterface.nativePassPinchGesture(iA, fB, 0.0f, (int) (pointC.x / fC), (int) (pointC.y / fC), (int) (pointD.x / fC), (int) (pointD.y / fC));
    }

    public static float[] a(int i, float[] fArr) {
        int[] iArr = new int[][]{new int[]{1, -1, 0, 1}, new int[]{-1, -1, 1, 0}, new int[]{-1, 1, 0, 1}, new int[]{1, 1, 1, 0}}[i];
        return new float[]{iArr[0] * fArr[iArr[2]], fArr[iArr[3]] * iArr[1], fArr[2]};
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        int rotation = ((WindowManager) this.w.getBaseContext().getSystemService("window")).getDefaultDisplay().getRotation();
        if (sensorEvent.sensor.getType() == 11) {
            SensorManager.getQuaternionFromVector(this.o, a(rotation, sensorEvent.values));
            SensorManager.getRotationMatrixFromVector(this.p, this.o);
            SensorManager.getOrientation(this.p, this.q);
            NativeInputInterface.nativePassGyroscopeChange(this.q[0], this.q[1], this.q[2], this.o[0], this.o[2], this.o[3], this.o[1]);
            return;
        }
        if (sensorEvent.sensor.getType() == 1) {
            this.r[0] = (this.r[0] * 0.8f) + (sensorEvent.values[0] * 0.19999999f);
            this.r[1] = (this.r[1] * 0.8f) + (sensorEvent.values[1] * 0.19999999f);
            this.r[2] = (this.r[2] * 0.8f) + (sensorEvent.values[2] * 0.19999999f);
            this.s[0] = sensorEvent.values[0] - this.r[0];
            this.s[1] = sensorEvent.values[1] - this.r[1];
            this.s[2] = sensorEvent.values[2] - this.r[2];
            float[] fArrA = a(rotation, this.s);
            float[] fArrA2 = a(rotation, this.r);
            NativeInputInterface.nativePassAccelerometerChange(-fArrA[1], fArrA[2], fArrA[0]);
            NativeInputInterface.nativePassGravityChange(-fArrA2[1], -fArrA2[2], fArrA2[0]);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    class c extends Handler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f7952b;

        c(b bVar) {
            this.f7952b = new WeakReference(bVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 101:
                    b bVar = (b) this.f7952b.get();
                    if (bVar != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int size = bVar.t.size();
                        for (int i = 0; i < size; i++) {
                            long[] jArr = (long[]) bVar.t.valueAt(i);
                            if (jArr != null && jElapsedRealtime - jArr[0] > 3000) {
                                int iKeyAt = bVar.t.keyAt(i);
                                if (InputDevice.getDevice(iKeyAt) == null) {
                                    NativeInputInterface.nativeGamepadDisconnectEvent(iKeyAt);
                                    bVar.t.remove(iKeyAt);
                                } else {
                                    jArr[0] = jElapsedRealtime;
                                }
                            }
                        }
                        sendEmptyMessageDelayed(101, 3000L);
                    }
                    break;
            }
        }
    }
}
