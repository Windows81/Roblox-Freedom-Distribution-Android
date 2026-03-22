package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.appsflyer.AndroidUtils;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class EventDataCollector {

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private final Context f149;

    public EventDataCollector(Context context) {
        this.f149 = context;
    }

    public String signature() throws NoSuchAlgorithmException, PackageManager.NameNotFoundException, CertificateException {
        return AndroidUtils.signature(this.f149.getPackageManager(), this.f149.getPackageName());
    }

    public long bootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public String disk() {
        long availableBlocks;
        long blockCount;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 18) {
            long blockSizeLong = statFs.getBlockSizeLong();
            availableBlocks = statFs.getAvailableBlocksLong() * blockSizeLong;
            blockCount = statFs.getBlockCountLong() * blockSizeLong;
        } else {
            int blockSize = statFs.getBlockSize();
            availableBlocks = statFs.getAvailableBlocks() * blockSize;
            blockCount = statFs.getBlockCount() * blockSize;
        }
        double dPow = Math.pow(2.0d, 20.0d);
        double d2 = availableBlocks;
        Double.isNaN(d2);
        long j = (long) (d2 / dPow);
        double d3 = blockCount;
        Double.isNaN(d3);
        long j2 = (long) (d3 / dPow);
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append("/");
        sb.append(j2);
        return sb.toString();
    }
}
