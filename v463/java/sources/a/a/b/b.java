package a.a.b;

import a.a.c.g;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.net.wifi.WifiManager;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f356a;

    public b(Context context) {
        this.f356a = context;
    }

    public HashMap<String, Object> a() {
        HashMap<String, Object> map = new HashMap<>();
        map.put("guid", l());
        map.put("uname.sysname", "Android");
        map.put("uname.machine", System.getProperty("os.arch"));
        map.put("cpu.boottime", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        map.put("device.airplane_mode", Boolean.valueOf(b()));
        map.put("device.location", c().toString());
        map.put("device.nfc.status", d().toString());
        map.put("device.gps.enabled", g().toString());
        map.put("device.bluetooth_status", e().toString());
        map.put("device.cpu.temperature", Float.valueOf(f()));
        map.put("device.is_power_saving_mode", Boolean.valueOf(i()));
        map.put("device.wifi.status", h().toString());
        map.put("system.memory.total", m());
        map.put("system.memory.free", n());
        map.put("system.memory.active", o());
        map.put("app.storage_used", q());
        map.put("battery.level", Float.valueOf(j()));
        map.put("battery.state", k().toString());
        return map;
    }

    private boolean b() {
        return Settings.Global.getInt(this.f356a.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    private a.a.c.d c() {
        if (Settings.Secure.getInt(this.f356a.getContentResolver(), "location_mode", 0) != 0) {
            return a.a.c.d.ENABLED;
        }
        return a.a.c.d.DISABLED;
    }

    private a.a.c.e d() {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this.f356a);
        if (defaultAdapter == null) {
            return a.a.c.e.NOT_AVAILABLE;
        }
        if (!defaultAdapter.isEnabled()) {
            return a.a.c.e.DISABLED;
        }
        return a.a.c.e.ENABLED;
    }

    private a.a.c.b e() {
        if (!e.a(this.f356a)) {
            return a.a.c.b.NOT_PERMITTED;
        }
        if (BluetoothAdapter.getDefaultAdapter().isEnabled()) {
            return a.a.c.b.ENABLED;
        }
        return a.a.c.b.DISABLED;
    }

    private float f() {
        try {
            Process processExec = Runtime.getRuntime().exec("cat sys/class/thermal/thermal_zone0/temp");
            processExec.waitFor();
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line == null) {
                return 0.0f;
            }
            return Float.parseFloat(line) / 1000.0f;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    private a.a.c.c g() {
        return ((LocationManager) this.f356a.getSystemService("location")).isProviderEnabled("gps") ? a.a.c.c.ENABLED : a.a.c.c.DISABLED;
    }

    private g h() {
        if (!e.b(this.f356a)) {
            return g.NOT_PERMITTED;
        }
        if (((WifiManager) this.f356a.getApplicationContext().getSystemService("wifi")).isWifiEnabled()) {
            return g.ENABLED;
        }
        return g.DISABLED;
    }

    private boolean i() {
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        return ((PowerManager) this.f356a.getSystemService("power")).isPowerSaveMode();
    }

    private float j() {
        if (this.f356a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")) == null) {
            return -1.0f;
        }
        return r0.getIntExtra("level", -1) / r0.getIntExtra("scale", -1);
    }

    private a.a.c.a k() {
        Intent intentRegisterReceiver = this.f356a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return a.a.c.a.UNKNOWN;
        }
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        if (intExtra == 2) {
            return a.a.c.a.CHARGING;
        }
        if (intExtra == 4) {
            return a.a.c.a.UNPLAGGED;
        }
        if (intExtra == 5) {
            return a.a.c.a.FULL;
        }
        return a.a.c.a.UNKNOWN;
    }

    private String l() {
        String string = Settings.Secure.getString(this.f356a.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return UUID.nameUUIDFromBytes(string.getBytes()).toString();
    }

    private String m() {
        return Long.toString(p().totalMem);
    }

    private String n() {
        return Long.toString(p().availMem);
    }

    private String o() {
        ActivityManager.MemoryInfo memoryInfoP = p();
        return Long.toString(memoryInfoP.totalMem - memoryInfoP.availMem);
    }

    private ActivityManager.MemoryInfo p() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) this.f356a.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    private String q() {
        long jFreeMemory;
        try {
            Runtime runtime = Runtime.getRuntime();
            jFreeMemory = runtime.totalMemory() - runtime.freeMemory();
        } catch (Exception e2) {
            e2.printStackTrace();
            jFreeMemory = -1;
        }
        return Long.toString(jFreeMemory);
    }
}
