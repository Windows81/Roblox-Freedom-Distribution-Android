package org.fmod;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FMOD {
    private static Context gContext;

    public static void init(Context context) {
        gContext = context;
    }

    public static void close() {
        gContext = null;
    }

    public static boolean checkInit() {
        return gContext != null;
    }

    public static AssetManager getAssetManager() {
        Context context = gContext;
        if (context != null) {
            return context.getAssets();
        }
        return null;
    }

    public static boolean supportsLowLatency() {
        if (gContext == null || Build.VERSION.SDK_INT < 5) {
            return false;
        }
        int outputBlockSize = getOutputBlockSize();
        boolean zHasSystemFeature = gContext.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
        boolean zHasSystemFeature2 = gContext.getPackageManager().hasSystemFeature("android.hardware.audio.pro");
        boolean z = outputBlockSize > 0 && outputBlockSize <= 1024;
        boolean zIsBluetoothOn = isBluetoothOn();
        Log.i("fmod", "FMOD::supportsLowLatency                 : Low latency = " + zHasSystemFeature + ", Pro Audio = " + zHasSystemFeature2 + ", Bluetooth On = " + zIsBluetoothOn + ", Acceptable Block Size = " + z + " (" + outputBlockSize + ")");
        return z && zHasSystemFeature && !zIsBluetoothOn;
    }

    public static boolean supportsAAudio() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static int getOutputSampleRate() {
        String property;
        if (gContext == null || Build.VERSION.SDK_INT < 17 || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    public static int getOutputBlockSize() {
        String property;
        if (gContext == null || Build.VERSION.SDK_INT < 17 || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    public static boolean isBluetoothOn() {
        Context context = gContext;
        if (context == null) {
            return false;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        return audioManager.isBluetoothA2dpOn() || audioManager.isBluetoothScoOn();
    }
}
