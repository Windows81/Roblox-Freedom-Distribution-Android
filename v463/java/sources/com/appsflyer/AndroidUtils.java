package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import com.appsflyer.share.Constants;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AndroidUtils {
    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public static boolean m33(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    public static boolean isPermissionAvailable(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        int iCheckPermission = context.checkPermission(str, Process.myPid(), Process.myUid());
        StringBuilder sb = new StringBuilder("is Permission Available: ");
        sb.append(str);
        sb.append("; res: ");
        sb.append(iCheckPermission);
        AFLogger.afRDLog(sb.toString());
        return iCheckPermission == 0;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    static boolean m32() {
        return Build.BRAND.equals("OPPO");
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    static Map<String, String> m34(Context context, Map<String, String> map, Uri uri) {
        boolean z;
        int i;
        if (uri.getQuery() != null) {
            z = false;
            for (String str : uri.getQuery().split("&")) {
                int iIndexOf = str.indexOf("=");
                String strSubstring = iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
                if (!map.containsKey(strSubstring)) {
                    if (strSubstring.equals(Constants.URL_CAMPAIGN)) {
                        strSubstring = "campaign";
                    } else if (strSubstring.equals(Constants.URL_MEDIA_SOURCE)) {
                        strSubstring = "media_source";
                    } else if (strSubstring.equals("af_prt")) {
                        z = true;
                        strSubstring = "agency";
                    }
                    map.put(strSubstring, "");
                }
                map.put(strSubstring, (iIndexOf <= 0 || str.length() <= (i = iIndexOf + 1)) ? null : str.substring(i));
            }
        } else {
            z = false;
        }
        try {
            if (!map.containsKey("install_time")) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                long j = packageInfo.firstInstallTime;
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                map.put("install_time", simpleDateFormat.format(new Date(j)));
            }
        } catch (Exception e2) {
            AFLogger.afErrorLog("Could not fetch install time. ", e2);
        }
        if (uri.getQueryParameter("af_deeplink") != null && !map.containsKey("af_status")) {
            map.put("af_status", "Non-organic");
        }
        if (z) {
            map.remove("media_source");
        }
        String path = uri.getPath();
        if (path != null) {
            map.put("path", path);
        }
        String scheme = uri.getScheme();
        if (scheme != null) {
            map.put("scheme", scheme);
        }
        String host = uri.getHost();
        if (host != null) {
            map.put("host", host);
        }
        return map;
    }

    public static String signature(PackageManager packageManager, String str) throws NoSuchAlgorithmException, PackageManager.NameNotFoundException, CertificateException {
        Signature[] signatureArr = packageManager.getPackageInfo(str, 64).signatures;
        if (signatureArr == null) {
            return null;
        }
        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()));
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        messageDigest.update(x509Certificate.getEncoded());
        return String.format("%032X", new BigInteger(1, messageDigest.digest()));
    }

    public static long getVersionCode(Context context, String str) {
        try {
            return Build.VERSION.SDK_INT >= 28 ? context.getPackageManager().getPackageInfo(str, 0).getLongVersionCode() : r1.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog(e2.getMessage(), e2);
            return 0L;
        }
    }

    public static String getVersionName(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog(e2.getMessage(), e2);
            return "";
        }
    }
}
