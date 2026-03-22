package com.b.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f2883a = {"15555215554", "15555215556", "15555215558", "15555215560", "15555215562", "15555215564", "15555215566", "15555215568", "15555215570", "15555215572", "15555215574", "15555215576", "15555215578", "15555215580", "15555215582", "15555215584"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2884b = {"000000000000000", "e21833235b6eef10", "012345678912345"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f2885c = {"310260000000000"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f2886d = {"/dev/socket/genyd", "/dev/socket/baseband_genyd"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f2887e = {"goldfish"};
    private static final String[] f = {"/dev/socket/qemud", "/dev/qemu_pipe"};
    private static final String[] g = {"ueventd.android_x86.rc", "x86.prop", "ueventd.ttVM_x86.rc", "init.ttVM_x86.rc", "fstab.ttVM_x86", "fstab.vbox86", "init.vbox86.rc", "ueventd.vbox86.rc"};
    private static final String[] h = {"fstab.andy", "ueventd.andy.rc"};
    private static final String[] i = {"fstab.nox", "init.nox.rc", "ueventd.nox.rc"};
    private static final b[] j = {new b("init.svc.qemud", null), new b("init.svc.qemu-props", null), new b("qemu.hw.mainkeys", null), new b("qemu.sf.fake_camera", null), new b("qemu.sf.lcd_density", null), new b("ro.bootloader", "unknown"), new b("ro.bootmode", "unknown"), new b("ro.hardware", "goldfish"), new b("ro.kernel.android.qemud", null), new b("ro.kernel.qemu.gles", null), new b("ro.kernel.qemu", "1"), new b("ro.product.device", "generic"), new b("ro.product.model", "sdk"), new b("ro.product.name", "sdk"), new b("ro.serialno", null)};
    private static Context k;
    private static a o;
    private boolean l = false;
    private boolean m = false;
    private List<String> n;

    /* JADX INFO: renamed from: com.b.a.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0068a {
        void a(boolean z);
    }

    public static a a(Context context) {
        if (o == null) {
            o = new a(context);
        }
        return o;
    }

    private a(Context context) {
        ArrayList arrayList = new ArrayList();
        this.n = arrayList;
        k = context;
        arrayList.add("com.google.android.launcher.layouts.genymotion");
        this.n.add("com.bluestacks");
        this.n.add("com.bignox.app");
    }

    public a a(boolean z) {
        this.m = z;
        return this;
    }

    public void a(final InterfaceC0068a interfaceC0068a) {
        new Thread(new Runnable() { // from class: com.b.a.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                boolean zB = a.this.b();
                a.this.a("This System is Emulator: " + zB);
                InterfaceC0068a interfaceC0068a2 = interfaceC0068a;
                if (interfaceC0068a2 != null) {
                    interfaceC0068a2.a(zB);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        a(a());
        boolean zC = c();
        a("Check basic " + zC);
        if (!zC) {
            zC = d();
            a("Check Advanced " + zC);
        }
        if (zC) {
            return zC;
        }
        boolean zE = e();
        a("Check Package Name " + zE);
        return zE;
    }

    private boolean c() {
        boolean z = false;
        boolean z2 = Build.FINGERPRINT.startsWith("generic") || Build.MODEL.contains("google_sdk") || Build.MODEL.toLowerCase().contains("droid4x") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || Build.HARDWARE.equals("goldfish") || Build.HARDWARE.equals("vbox86") || Build.PRODUCT.equals("sdk") || Build.PRODUCT.equals("google_sdk") || Build.PRODUCT.equals("sdk_x86") || Build.PRODUCT.equals("vbox86p") || Build.BOARD.toLowerCase().contains("nox") || Build.BOOTLOADER.toLowerCase().contains("nox") || Build.HARDWARE.toLowerCase().contains("nox") || Build.PRODUCT.toLowerCase().contains("nox") || Build.SERIAL.toLowerCase().contains("nox");
        if (z2) {
            return true;
        }
        if (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) {
            z = true;
        }
        boolean z3 = z2 | z;
        if (z3) {
            return true;
        }
        return z3 | "google_sdk".equals(Build.PRODUCT);
    }

    private boolean d() {
        return f() || a(f2886d, "Geny") || a(h, "Andy") || a(i, "Nox") || k() || a(f, "Pipes") || m() || (l() && a(g, "X86"));
    }

    private boolean e() {
        Iterator<ApplicationInfo> it = k.getPackageManager().getInstalledApplications(128).iterator();
        while (it.hasNext()) {
            String str = it.next().packageName;
            if (this.n.contains(str)) {
                a("Detected " + str);
                return true;
            }
        }
        return false;
    }

    private boolean f() {
        if (androidx.core.a.b.a(k, "android.permission.READ_PHONE_STATE") == 0 && this.m && n()) {
            return g() || h() || i() || j();
        }
        return false;
    }

    private boolean g() {
        String line1Number = ((TelephonyManager) k.getSystemService("phone")).getLine1Number();
        for (String str : f2883a) {
            if (str.equalsIgnoreCase(line1Number)) {
                a(" check phone number is detected");
                return true;
            }
        }
        return false;
    }

    private boolean h() {
        String deviceId = ((TelephonyManager) k.getSystemService("phone")).getDeviceId();
        for (String str : f2884b) {
            if (str.equalsIgnoreCase(deviceId)) {
                a("Check device id is detected");
                return true;
            }
        }
        return false;
    }

    private boolean i() {
        String subscriberId = ((TelephonyManager) k.getSystemService("phone")).getSubscriberId();
        for (String str : f2885c) {
            if (str.equalsIgnoreCase(subscriberId)) {
                a("Check imsi is detected");
                return true;
            }
        }
        return false;
    }

    private boolean j() {
        if (!((TelephonyManager) k.getSystemService("phone")).getNetworkOperatorName().equalsIgnoreCase("android")) {
            return false;
        }
        a("Check operator name android is detected");
        return true;
    }

    private boolean k() {
        File[] fileArr = {new File("/proc/tty/drivers"), new File("/proc/cpuinfo")};
        for (int i2 = 0; i2 < 2; i2++) {
            File file = fileArr[i2];
            if (file.exists() && file.canRead()) {
                byte[] bArr = new byte[1024];
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                String str = new String(bArr);
                for (String str2 : f2887e) {
                    if (str.contains(str2)) {
                        a("Check QEmuDrivers is detected");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean a(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (new File(str2).exists()) {
                a("Check " + str + " is detected");
                return true;
            }
        }
        return false;
    }

    private boolean l() {
        int i2 = 0;
        for (b bVar : j) {
            String strA = a(k, bVar.f2890a);
            if (bVar.f2891b == null && strA != null) {
                i2++;
            }
            if (bVar.f2891b != null && strA.contains(bVar.f2891b)) {
                i2++;
            }
        }
        if (i2 < 5) {
            return false;
        }
        a("Check QEmuProps is detected");
        return true;
    }

    private boolean m() {
        if (androidx.core.a.b.a(k, "android.permission.INTERNET") != 0) {
            return false;
        }
        String[] strArr = {"/system/bin/netcfg"};
        StringBuilder sb = new StringBuilder();
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(strArr);
            processBuilder.directory(new File("/system/bin/"));
            processBuilder.redirectErrorStream(true);
            InputStream inputStream = processBuilder.start().getInputStream();
            byte[] bArr = new byte[1024];
            while (inputStream.read(bArr) != -1) {
                sb.append(new String(bArr));
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        String string = sb.toString();
        a("netcfg data -> " + string);
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        for (String str : string.split("\n")) {
            if ((str.contains("wlan0") || str.contains("tunl0") || str.contains("eth0")) && str.contains("10.0.2.15")) {
                a("Check IP is detected");
                return true;
            }
        }
        return false;
    }

    private String a(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, str);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean n() {
        boolean zHasSystemFeature = k.getPackageManager().hasSystemFeature("android.hardware.telephony");
        a("Supported TelePhony: " + zHasSystemFeature);
        return zHasSystemFeature;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.l) {
            Log.d(getClass().getName(), str);
        }
    }

    public static String a() {
        return "Build.PRODUCT: " + Build.PRODUCT + "\nBuild.MANUFACTURER: " + Build.MANUFACTURER + "\nBuild.BRAND: " + Build.BRAND + "\nBuild.DEVICE: " + Build.DEVICE + "\nBuild.MODEL: " + Build.MODEL + "\nBuild.HARDWARE: " + Build.HARDWARE + "\nBuild.FINGERPRINT: " + Build.FINGERPRINT;
    }
}
