package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigInteger;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ix {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f5157a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static String f5158b;

    public static String a() {
        String str;
        synchronized (f5157a) {
            str = f5158b;
        }
        return str;
    }

    public static String a(Context context, String str, String str2) {
        String str3;
        synchronized (f5157a) {
            if (f5158b != null || TextUtils.isEmpty(str)) {
                str3 = f5158b;
            } else {
                try {
                    ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
                    Class<?> cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
                    BigInteger bigInteger = new BigInteger(new byte[1]);
                    String[] strArrSplit = str.split(",");
                    BigInteger bit = bigInteger;
                    for (int i = 0; i < strArrSplit.length; i++) {
                        com.google.android.gms.ads.internal.aw.e();
                        if (jm.a(classLoader, cls, strArrSplit[i])) {
                            bit = bit.setBit(i);
                        }
                    }
                    f5158b = String.format(Locale.US, "%X", bit);
                } catch (Throwable th) {
                    f5158b = "err";
                }
                str3 = f5158b;
            }
        }
        return str3;
    }
}
