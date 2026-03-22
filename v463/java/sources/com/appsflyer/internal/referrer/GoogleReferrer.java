package com.appsflyer.internal.referrer;

import android.content.Context;
import com.a.a.a.a;
import com.a.a.a.c;
import com.a.a.a.d;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLibCore;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GoogleReferrer {
    public final Map<String, Object> oldMap = new HashMap();
    public final Map<String, Object> newMap = new HashMap();

    public static boolean allow(AppsFlyerLibCore appsFlyerLibCore, Context context) {
        if (appsFlyerLibCore.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(context), false) > 2) {
            AFLogger.afRDLog("Install referrer will not load, the counter > 2, ");
            return false;
        }
        try {
            Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            if (AndroidUtils.isPermissionAvailable(context, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")) {
                AFLogger.afDebugLog("Install referrer is allowed");
                return true;
            }
            AFLogger.afDebugLog("Install referrer is not allowed");
            return false;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder("Class ");
            sb.append("com.android.installreferrer.api.InstallReferrerClient");
            sb.append(" not found");
            AFLogger.afRDLog(sb.toString());
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog("An error occurred while trying to verify manifest : ".concat("com.android.installreferrer.api.InstallReferrerClient"), th);
            return false;
        }
    }

    public void start(final Context context, final Runnable runnable) {
        try {
            final a aVarA = a.a(context).a();
            AFLogger.afDebugLog("Connecting to Install Referrer Library...");
            aVarA.a(new c() { // from class: com.appsflyer.internal.referrer.GoogleReferrer.1
                @Override // com.a.a.a.c
                public final void onInstallReferrerSetupFinished(int i) {
                    GoogleReferrer.this.oldMap.put("code", String.valueOf(i));
                    GoogleReferrer.this.newMap.put(Payload.SOURCE, Payload.SOURCE_GOOGLE);
                    GoogleReferrer.this.newMap.put(Payload.API, Long.valueOf(AndroidUtils.getVersionCode(context, "com.android.vending")));
                    GoogleReferrer.this.newMap.put(Payload.API_NAME, AndroidUtils.getVersionName(context, "com.android.vending"));
                    GoogleReferrer.this.newMap.putAll(new MandatoryFields());
                    if (i == -1) {
                        AFLogger.afWarnLog("InstallReferrer SERVICE_DISCONNECTED");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_DISCONNECTED);
                    } else if (i == 0) {
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_OK);
                        try {
                            AFLogger.afDebugLog("InstallReferrer connected");
                            if (aVarA.a()) {
                                d dVarC = aVarA.c();
                                String strA = dVarC.a();
                                if (strA != null) {
                                    GoogleReferrer.this.oldMap.put("val", strA);
                                    GoogleReferrer.this.newMap.put(Payload.RFR, strA);
                                }
                                long jB = dVarC.b();
                                GoogleReferrer.this.oldMap.put("clk", Long.toString(jB));
                                GoogleReferrer.this.newMap.put(Payload.CLICK_TS, Long.valueOf(jB));
                                long jC = dVarC.c();
                                GoogleReferrer.this.oldMap.put("install", Long.toString(jC));
                                GoogleReferrer.this.newMap.put(Payload.INSTALL_BEGIN_TS, Long.valueOf(jC));
                                try {
                                    boolean zD = dVarC.d();
                                    GoogleReferrer.this.oldMap.put(Payload.INSTANT, Boolean.valueOf(zD));
                                    HashMap map = new HashMap();
                                    map.put(Payload.INSTANT, Boolean.valueOf(zD));
                                    GoogleReferrer.this.newMap.put(Payload.GOOGLE_CUSTOM, map);
                                } catch (NoSuchMethodError unused) {
                                }
                            } else {
                                AFLogger.afWarnLog("ReferrerClient: InstallReferrer is not ready");
                                GoogleReferrer.this.oldMap.put("err", "ReferrerClient: InstallReferrer is not ready");
                            }
                        } catch (Throwable th) {
                            StringBuilder sb = new StringBuilder("Failed to get install referrer: ");
                            sb.append(th.getMessage());
                            AFLogger.afWarnLog(sb.toString());
                            GoogleReferrer.this.oldMap.put("err", th.getMessage());
                        }
                    } else if (i == 1) {
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_UNAVAILABLE);
                        AFLogger.afWarnLog("InstallReferrer not supported");
                    } else if (i == 2) {
                        AFLogger.afWarnLog("InstallReferrer FEATURE_NOT_SUPPORTED");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_FEATURE_NOT_SUPPORTED);
                    } else if (i == 3) {
                        AFLogger.afWarnLog("InstallReferrer DEVELOPER_ERROR");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_DEVELOPER_ERROR);
                    } else {
                        AFLogger.afWarnLog("responseCode not found.");
                    }
                    AFLogger.afDebugLog("Install Referrer collected locally");
                    runnable.run();
                    aVarA.b();
                }

                @Override // com.a.a.a.c
                public final void onInstallReferrerServiceDisconnected() {
                    AFLogger.afDebugLog("Install Referrer service disconnected");
                }
            });
        } catch (Throwable th) {
            AFLogger.afErrorLog("referrerClient -> startConnection", th);
        }
    }
}
