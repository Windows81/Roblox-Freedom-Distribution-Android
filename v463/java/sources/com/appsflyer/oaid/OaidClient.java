package com.appsflyer.oaid;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bun.miitmdid.core.JLibrary;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.supplier.IIdentifierListener;
import com.bun.supplier.IdSupplier;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class OaidClient {
    private final Context context;
    private final Logger logger;
    private final long timeout;
    private final TimeUnit unit;

    public OaidClient(Context context, long j, TimeUnit timeUnit) {
        Logger logger = Logger.getLogger("AppsFlyerOaid5.4.0");
        this.logger = logger;
        this.context = context;
        this.timeout = j;
        this.unit = timeUnit;
        logger.setLevel(Level.OFF);
    }

    public OaidClient(Context context) {
        this(context, 1L, TimeUnit.SECONDS);
    }

    private static boolean isHuawei() {
        try {
            if (!Build.BRAND.equalsIgnoreCase(Payload.SOURCE_HUAWEI)) {
                if (((Integer) Class.forName("com.huawei.android.os.BuildEx$VERSION").getDeclaredField("EMUI_SDK_INT").get(null)).intValue() <= 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return false;
        }
    }

    public Info fetch() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Info infoFetchHuawei = isHuawei() ? fetchHuawei() : fetchMsa();
            this.logger.info("Fetch " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
            return infoFetchHuawei;
        } catch (Throwable th) {
            this.logger.log(Level.INFO, "Fetch", th);
            return null;
        }
    }

    private Info fetchMsa() throws Exception {
        String strValueOf;
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        JLibrary.InitEntry(this.context);
        int iInitSdk = MdidSdkHelper.InitSdk(this.context, this.logger.getLevel() == null, new IIdentifierListener() { // from class: com.appsflyer.oaid.OaidClient.1
            public void OnSupport(boolean z, IdSupplier idSupplier) {
                try {
                    linkedBlockingQueue.offer(idSupplier == null ? "" : idSupplier.getOAID());
                } catch (Throwable th) {
                    OaidClient.this.logger.log(Level.INFO, "IIdentifierListener", th);
                }
            }
        });
        if (iInitSdk != 0) {
            switch (iInitSdk) {
                case 1008611:
                    strValueOf = "Unsupported manufacturer";
                    break;
                case 1008612:
                    strValueOf = "Unsupported device";
                    break;
                case 1008613:
                    strValueOf = "Error loading configuration file";
                    break;
                case 1008614:
                    strValueOf = "Callback will be executed in a different thread";
                    break;
                case 1008615:
                    strValueOf = "Reflection call error";
                    break;
                default:
                    strValueOf = String.valueOf(iInitSdk);
                    break;
            }
            this.logger.warning(strValueOf);
        }
        String str = (String) linkedBlockingQueue.poll(this.timeout, this.unit);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new Info(str);
    }

    private Info fetchHuawei() {
        try {
            if (!AdvertisingIdClient.isAdvertisingIdAvailable(this.context)) {
                return null;
            }
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.context);
            return new Info(advertisingIdInfo.getId(), Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
        } catch (Throwable th) {
            this.logger.log(Level.INFO, "Huawei", th);
            return null;
        }
    }

    public void setLogging(boolean z) {
        this.logger.setLevel(z ? null : Level.OFF);
    }

    public static class Info {
        private final String id;
        private final Boolean lat;

        public Info(String str, Boolean bool) {
            this.id = str;
            this.lat = bool;
        }

        public Info(String str) {
            this(str, null);
        }

        public String getId() {
            return this.id;
        }

        public Boolean getLat() {
            return this.lat;
        }
    }
}
