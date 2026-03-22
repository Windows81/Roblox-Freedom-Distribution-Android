package com.roblox.engine;

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
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import com.roblox.engine.c;
import com.roblox.engine.d;
import com.roblox.engine.jni.NativeInputInterface;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements SensorEventListener, View.OnTouchListener, c.a, d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SurfaceView f7589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GestureDetector f7591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GestureDetectorOnGestureListenerC0184b f7592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.engine.c f7593e;
    private com.roblox.engine.d f;
    private SensorManager h;
    private Sensor i;
    private Sensor j;
    private OrientationEventListener k;
    private InputManager v;
    private Activity w;
    private a x;
    private boolean z;
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
    private AtomicBoolean y = new AtomicBoolean(false);

    public interface a {
        boolean j_();

        float o();
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7606b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7607c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f7609e;
        private float f;
        private int g;

        d() {
        }

        public float a() {
            return this.f7609e;
        }

        public void a(float f) {
            this.f7605a = this.f7609e;
            this.f7609e = f;
        }

        public float b() {
            return this.f;
        }

        public void b(float f) {
            this.f7606b = this.f;
            this.f = f;
        }

        public int c() {
            return this.g;
        }

        public void a(int i) {
            this.f7607c = this.g;
            this.g = i;
        }
    }

    public b(Activity activity, SurfaceView surfaceView, a aVar) {
        this.f7589a = null;
        this.f7590b = true;
        this.f7591c = null;
        this.f7592d = null;
        this.f7593e = null;
        this.f = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        int i = 3;
        this.f7589a = surfaceView;
        this.w = activity;
        boolean zHasSystemFeature = activity.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        this.f7590b = zHasSystemFeature;
        this.x = aVar;
        if (zHasSystemFeature) {
            this.f7592d = new GestureDetectorOnGestureListenerC0184b();
            this.f7591c = new GestureDetector(activity, this.f7592d);
            this.f7593e = new com.roblox.engine.c(this);
            this.f = new com.roblox.engine.d(this);
        }
        a(surfaceView);
        this.h = (SensorManager) activity.getBaseContext().getSystemService("sensor");
        if (Build.VERSION.SDK_INT >= 19) {
            this.v = (InputManager) activity.getBaseContext().getSystemService("input");
        }
        this.i = this.h.getDefaultSensor(1);
        Sensor defaultSensor = this.h.getDefaultSensor(11);
        this.j = defaultSensor;
        if (defaultSensor != null) {
            NativeInputInterface.nativeSetGyroscopeEnabled(true);
        }
        if (this.i != null) {
            NativeInputInterface.nativeSetAccelerometerEnabled(true);
        }
        OrientationEventListener orientationEventListener = new OrientationEventListener(activity, i) { // from class: com.roblox.engine.b.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i2) {
                b.this.c();
            }
        };
        this.k = orientationEventListener;
        if (orientationEventListener.canDetectOrientation()) {
            this.k.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float b() {
        a aVar = this.x;
        if (aVar != null) {
            return aVar.o();
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
    public void c() {
        Activity activity = this.w;
        if (activity == null) {
            return;
        }
        WindowManager windowManager = activity.getWindowManager();
        int rotation = windowManager.getDefaultDisplay().getRotation();
        int i = 0;
        Point point = new Point(0, 0);
        windowManager.getDefaultDisplay().getSize(point);
        if (point.x < point.y) {
            i = 3;
        } else if (rotation == 0 || rotation == 2 ? rotation != 2 : rotation != 3) {
            i = 1;
        }
        NativeInputInterface.nativeUpdateScreenOrientation(i);
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
        int i2;
        boolean[] zArrC = c(i);
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < 14; i3++) {
            switch (i3) {
                case 0:
                    i2 = 96;
                    break;
                case 1:
                    i2 = 97;
                    break;
                case 2:
                    i2 = 99;
                    break;
                case 3:
                    i2 = 100;
                    break;
                case 4:
                    i2 = 19;
                    break;
                case 5:
                    i2 = 20;
                    break;
                case 6:
                    i2 = 21;
                    break;
                case 7:
                    i2 = 22;
                    break;
                case 8:
                    i2 = 103;
                    break;
                case 9:
                    i2 = 102;
                    break;
                case 10:
                    i2 = 106;
                    break;
                case 11:
                    i2 = 107;
                    break;
                case 12:
                    i2 = 109;
                    break;
                case 13:
                    i2 = 108;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (i3 < zArrC.length) {
                map.put(i2, Boolean.valueOf(zArrC[i3]));
            } else {
                map.put(i2, false);
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
            return inputDevice != null ? inputDevice.hasKeys(iArr) : zArr;
        }
        for (int i2 = 0; i2 < 14; i2++) {
            zArr[i2] = true;
        }
        return zArr;
    }

    public boolean a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 7 || motionEvent.getActionMasked() == 2) {
            float x = motionEvent.getX() / b();
            float y = motionEvent.getY() / b();
            float f = x - this.m;
            float f2 = y - this.n;
            this.m = x;
            this.n = y;
            NativeInputInterface.nativePassMouseMove(x, y, f, f2);
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
            /* JADX WARN: Removed duplicated region for block: B:46:0x007e  */
            /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
                	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1118)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1118)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
                */
            @Override // android.view.View.OnKeyListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public boolean onKey(android.view.View r7, int r8, android.view.KeyEvent r9) {
                /*
                    r6 = this;
                    r7 = 82
                    r0 = 1
                    r1 = 0
                    if (r8 == r7) goto L1e
                    r7 = 96
                    if (r8 == r7) goto L4d
                    r7 = 97
                    if (r8 == r7) goto L4d
                    r7 = 99
                    if (r8 == r7) goto L4d
                    r7 = 100
                    if (r8 == r7) goto L4d
                    switch(r8) {
                        case 19: goto L4d;
                        case 20: goto L4d;
                        case 21: goto L4d;
                        case 22: goto L4d;
                        default: goto L19;
                    }
                L19:
                    switch(r8) {
                        case 102: goto L4d;
                        case 103: goto L4d;
                        case 104: goto L4d;
                        case 105: goto L4d;
                        case 106: goto L4d;
                        case 107: goto L4d;
                        case 108: goto L4d;
                        case 109: goto L4d;
                        default: goto L1c;
                    }
                L1c:
                    goto L92
                L1e:
                    android.view.InputDevice r2 = r9.getDevice()
                    if (r2 != 0) goto L25
                    return r1
                L25:
                    r3 = 16778257(0x1000411, float:2.3512805E-38)
                    int r4 = r2.getSources()
                    r4 = r4 & r3
                    if (r4 != r3) goto L31
                    r3 = 1
                    goto L32
                L31:
                    r3 = 0
                L32:
                    r4 = 108(0x6c, float:1.51E-43)
                    if (r3 == 0) goto L4a
                    int r3 = android.os.Build.VERSION.SDK_INT
                    r5 = 19
                    if (r3 < r5) goto L4a
                    int[] r3 = new int[r0]
                    r3[r1] = r4
                    boolean[] r2 = r2.hasKeys(r3)
                    boolean r2 = r2[r1]
                    if (r2 != 0) goto L4a
                    r8 = 108(0x6c, float:1.51E-43)
                L4a:
                    if (r8 != r7) goto L4d
                    return r1
                L4d:
                    com.roblox.client.m.e r7 = com.roblox.client.m.c.a()
                    boolean r7 = r7.cN()
                    r2 = 16777232(0x1000010, float:2.3509932E-38)
                    r3 = 1025(0x401, float:1.436E-42)
                    if (r7 == 0) goto L6f
                    int r7 = r9.getSource()
                    r7 = r7 & r3
                    if (r7 == r3) goto L6d
                    int r7 = r9.getSource()
                    r7 = r7 & r2
                    if (r7 != r2) goto L6b
                    goto L6d
                L6b:
                    r7 = 0
                    goto L7c
                L6d:
                    r7 = 1
                    goto L7c
                L6f:
                    int r7 = r9.getSource()
                    if (r7 == r3) goto L6d
                    int r7 = r9.getSource()
                    if (r7 != r2) goto L6b
                    goto L6d
                L7c:
                    if (r7 == 0) goto L92
                    int r7 = r9.getAction()
                    if (r7 != 0) goto L85
                    r1 = 1
                L85:
                    int r7 = r9.getDeviceId()
                    com.roblox.engine.b r9 = com.roblox.engine.b.this
                    com.roblox.engine.b.a(r9, r7)
                    com.roblox.engine.jni.NativeInputInterface.nativeGamepadButtonEvent(r7, r8, r1)
                    goto L93
                L92:
                    r0 = 0
                L93:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.roblox.engine.b.AnonymousClass2.onKey(android.view.View, int, android.view.KeyEvent):boolean");
            }
        });
        surfaceView.setOnGenericMotionListener(new View.OnGenericMotionListener() { // from class: com.roblox.engine.b.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float[] f7596a = new float[8];

            private float a(MotionEvent motionEvent, InputDevice inputDevice, int i, int i2) {
                InputDevice.MotionRange motionRange = inputDevice.getMotionRange(i, motionEvent.getSource());
                if (motionRange == null) {
                    return 0.0f;
                }
                float flat = motionRange.getFlat();
                float axisValue = i2 < 0 ? motionEvent.getAxisValue(i) : motionEvent.getHistoricalAxisValue(i, i2);
                if (Math.abs(axisValue) > flat) {
                    return axisValue;
                }
                return 0.0f;
            }

            private void a(MotionEvent motionEvent, int i) {
                InputDevice device = motionEvent.getDevice();
                if (device == null) {
                    return;
                }
                this.f7596a[0] = a(motionEvent, device, 0, i);
                this.f7596a[1] = a(motionEvent, device, 1, i);
                this.f7596a[2] = a(motionEvent, device, 11, i);
                this.f7596a[3] = a(motionEvent, device, 14, i);
                this.f7596a[4] = Math.max(a(motionEvent, device, 17, i), a(motionEvent, device, 23, i));
                this.f7596a[5] = Math.max(a(motionEvent, device, 18, i), a(motionEvent, device, 22, i));
                this.f7596a[6] = a(motionEvent, device, 15, i);
                this.f7596a[7] = a(motionEvent, device, 16, i);
            }

            @Override // android.view.View.OnGenericMotionListener
            public boolean onGenericMotion(View view, MotionEvent motionEvent) {
                if (com.roblox.client.m.c.a().cN()) {
                    if ((motionEvent.getSource() & 8194) == 8194 || (motionEvent.getSource() & 1048584) == 1048584) {
                        return b.this.a(motionEvent);
                    }
                    if ((motionEvent.getSource() & 1025) != 1025 && (motionEvent.getSource() & 16777232) != 16777232) {
                        return false;
                    }
                } else {
                    if (motionEvent.getSource() == 8194 || motionEvent.getSource() == 1048584) {
                        return b.this.a(motionEvent);
                    }
                    if (motionEvent.getSource() != 1025 && motionEvent.getSource() != 16777232) {
                        return false;
                    }
                }
                int historySize = motionEvent.getHistorySize();
                for (int i = 0; i < historySize; i++) {
                    a(motionEvent, i);
                }
                a(motionEvent, -1);
                int deviceId = motionEvent.getDeviceId();
                b.this.a(deviceId);
                int i2 = 0;
                while (true) {
                    float[] fArr = this.f7596a;
                    if (i2 >= fArr.length) {
                        return true;
                    }
                    switch (i2) {
                        case 0:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 0, fArr[0], -fArr[1], 0.0f);
                            break;
                        case 1:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 1, fArr[0], -fArr[1], 0.0f);
                            break;
                        case 2:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 11, fArr[2], -fArr[3], 0.0f);
                            break;
                        case 3:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 14, fArr[2], -fArr[3], 0.0f);
                            break;
                        case 4:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 17, 0.0f, 0.0f, fArr[4]);
                            break;
                        case 5:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 18, 0.0f, 0.0f, fArr[5]);
                            break;
                        case 6:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 15, 0.0f, 0.0f, fArr[6]);
                            break;
                        case 7:
                            NativeInputInterface.nativeGamepadAxisEvent(deviceId, 16, 0.0f, 0.0f, -fArr[7]);
                            break;
                    }
                    i2++;
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ec  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 545
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.engine.b.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: renamed from: com.roblox.engine.b$b, reason: collision with other inner class name */
    private final class GestureDetectorOnGestureListenerC0184b implements GestureDetector.OnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7598a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7599b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7601d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7602e;
        private int f;
        private int g;

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        private GestureDetectorOnGestureListenerC0184b() {
            this.f7598a = -1;
            this.f7599b = -1;
            this.f7601d = 0;
            this.f7602e = 0;
            this.f = 0;
            this.g = 0;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            try {
                float fB = b.this.b();
                int x = (int) (motionEvent2.getX() / fB);
                int y = (int) (motionEvent2.getY() / fB);
                int x2 = (int) (motionEvent.getX() / fB);
                int y2 = (int) (motionEvent.getY() / fB);
                float f3 = y - y2;
                float f4 = x - x2;
                if (com.roblox.client.m.c.a().cT()) {
                    x = x2;
                }
                if (com.roblox.client.m.c.a().cT()) {
                    y = y2;
                }
                if (Math.abs(f4) > Math.abs(f3)) {
                    if (Math.abs(f4) > 50.0f && Math.abs(f) > 50.0f) {
                        if (f4 > 0.0f) {
                            b.this.a(x, y);
                        } else {
                            b.this.c(x, y);
                        }
                    }
                } else if (Math.abs(f3) > 50.0f && Math.abs(f2) > 50.0f) {
                    if (f3 > 0.0f) {
                        b.this.b(x, y);
                    } else {
                        b.this.d(x, y);
                    }
                }
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            float fB = b.this.b();
            NativeInputInterface.nativePassTapGesture((int) (motionEvent.getX() / fB), (int) (motionEvent.getY() / fB));
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            boolean z = this.f7599b == -1;
            this.f7599b = motionEvent2.getPointerId(motionEvent2.getActionIndex());
            float fB = b.this.b();
            this.f7601d = (int) (motionEvent2.getX() / fB);
            this.f7602e = (int) (motionEvent2.getY() / fB);
            int x = (int) (motionEvent.getX() / fB);
            int y = (int) (motionEvent.getY() / fB);
            int i = this.f7601d;
            int i2 = i - x;
            this.f = i2;
            int i3 = this.f7602e;
            int i4 = i3 - y;
            this.g = i4;
            if (z) {
                NativeInputInterface.nativePassPanGesture(0, i, i3, i2, i4, 0.0f);
            } else {
                NativeInputInterface.nativePassPanGesture(1, i, i3, i2, i4, 0.0f);
            }
            return false;
        }

        public void a() {
            this.f7599b = -1;
            NativeInputInterface.nativePassPanGesture(2, this.f7601d, this.f7602e, this.f, this.g, 0.0f);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            this.f7598a = motionEvent.getPointerId(motionEvent.getActionIndex());
            float fB = b.this.b();
            NativeInputInterface.nativePassLongPressGesture(0, motionEvent.getX() / fB, motionEvent.getY() / fB);
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
        float fB2 = b();
        NativeInputInterface.nativePassPinchGesture(iA, fB, 0.0f, (int) (pointC.x / fB2), (int) (pointC.y / fB2), (int) (pointD.x / fB2), (int) (pointD.y / fB2));
    }

    public static float[] a(int i, float[] fArr) {
        int[] iArr = new int[][]{new int[]{1, -1, 0, 1}, new int[]{-1, -1, 1, 0}, new int[]{-1, 1, 0, 1}, new int[]{1, 1, 1, 0}}[i];
        return new float[]{iArr[0] * fArr[iArr[2]], iArr[1] * fArr[iArr[3]], fArr[2]};
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        int rotation = ((WindowManager) this.w.getBaseContext().getSystemService("window")).getDefaultDisplay().getRotation();
        if (sensorEvent.sensor.getType() == 11) {
            SensorManager.getQuaternionFromVector(this.o, a(rotation, sensorEvent.values));
            SensorManager.getRotationMatrixFromVector(this.p, this.o);
            SensorManager.getOrientation(this.p, this.q);
            float[] fArr = this.q;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float[] fArr2 = this.o;
            NativeInputInterface.nativePassGyroscopeChange(f, f2, f3, fArr2[0], fArr2[2], fArr2[3], fArr2[1]);
            return;
        }
        if (sensorEvent.sensor.getType() == 1) {
            float[] fArr3 = this.r;
            fArr3[0] = (fArr3[0] * 0.8f) + (sensorEvent.values[0] * 0.19999999f);
            float[] fArr4 = this.r;
            fArr4[1] = (fArr4[1] * 0.8f) + (sensorEvent.values[1] * 0.19999999f);
            float[] fArr5 = this.r;
            fArr5[2] = (fArr5[2] * 0.8f) + (sensorEvent.values[2] * 0.19999999f);
            this.s[0] = sensorEvent.values[0] - this.r[0];
            this.s[1] = sensorEvent.values[1] - this.r[1];
            this.s[2] = sensorEvent.values[2] - this.r[2];
            float[] fArrA = a(rotation, this.s);
            float[] fArrA2 = a(rotation, this.r);
            NativeInputInterface.nativePassAccelerometerChange(-fArrA[1], fArrA[2], fArrA[0]);
            NativeInputInterface.nativePassGravityChange(-fArrA2[1], -fArrA2[2], fArrA2[0]);
        }
    }

    private boolean d() {
        if (!this.y.getAndSet(true)) {
            this.z = NativeSettingsInterface.nativeGetFFlag("EnableCancelInputEvent");
        }
        return this.z;
    }

    class c extends Handler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f7604b;

        c(b bVar) {
            this.f7604b = new WeakReference(bVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b bVar;
            if (message.what == 101 && (bVar = (b) this.f7604b.get()) != null) {
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
        }
    }
}
