package com.roblox.client.i;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.c;
import com.roblox.client.i.a;
import com.roblox.client.util.k;
import com.roblox.client.util.m;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import microsoft.aspnet.signalr.client.Platform;

/* JADX INFO: loaded from: classes.dex */
public class c implements a.InterfaceC0108a {
    private static final Set<String> g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f7158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f7159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.analytics.h f7161d;
    private boolean e;
    private boolean f;

    private enum a {
        APP_INIT_STATUS_NONE,
        APP_INIT_STATUS_STARTED,
        APP_INIT_STATUS_OK,
        APP_INIT_STATUS_ERROR
    }

    public enum b {
        APP_INIT_TYPE_UNKNOWN,
        APP_INIT_TYPE_SHELL,
        APP_INIT_TYPE_GAME
    }

    /* JADX INFO: renamed from: com.roblox.client.i.c$c, reason: collision with other inner class name */
    private static class C0109c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f7171a = new c();
    }

    static {
        try {
            System.loadLibrary("fmod");
            System.loadLibrary("roblox");
            System.loadLibrary("shell-lib");
        } catch (UnsatisfiedLinkError e) {
            com.roblox.client.util.g.b("AppManager", e.getLocalizedMessage());
        }
        g = new HashSet(Arrays.asList(com.roblox.client.i.a.f7136a, com.roblox.client.i.a.f7137b, com.roblox.client.i.a.f7138c, com.roblox.client.i.a.f7139d));
    }

    public static c a() {
        return C0109c.f7171a;
    }

    private c() {
        this.f7158a = b.APP_INIT_TYPE_UNKNOWN;
        this.f7159b = a.APP_INIT_STATUS_NONE;
        com.roblox.client.util.g.b("AppManager", "[AppManager]: Constructor called.");
    }

    public void a(Context context) {
        SharedPreferences sharedPreferencesA = m.a(context, "DeviceInstallPreferences");
        this.e = sharedPreferencesA.getBoolean("AppFirstLaunch", true);
        if (this.e) {
            com.roblox.client.util.g.b("AppManager", "First App launch!");
            f.a().b();
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            editorEdit.putBoolean("AppFirstLaunch", false);
            editorEdit.putLong("AppFirstLaunchTime", System.currentTimeMillis());
            editorEdit.apply();
        }
    }

    public long b(Context context) {
        return m.a(context, "DeviceInstallPreferences").getLong("AppFirstLaunchTime", -1L);
    }

    public com.google.android.gms.analytics.h b() {
        return this.f7161d;
    }

    public boolean c() {
        return this.e;
    }

    public void a(Context context, b bVar) {
        if (bVar != b.APP_INIT_TYPE_SHELL && bVar != b.APP_INIT_TYPE_GAME) {
            throw new IllegalArgumentException("Invalid AppInitType: " + bVar);
        }
        if (this.f7159b == a.APP_INIT_STATUS_NONE) {
            synchronized (c.class) {
                if (this.f7159b == a.APP_INIT_STATUS_NONE) {
                    this.f7159b = a.APP_INIT_STATUS_STARTED;
                    this.f7158a = bVar;
                    com.roblox.client.util.g.b("AppManager", "initialize: [" + this.f7158a + "] Start...");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (com.google.android.gms.common.e.a().a(context) == 0) {
                        this.f7160c = true;
                    } else {
                        com.roblox.client.util.g.d("AppManager", "GooglePlay services is NOT available!");
                    }
                    this.f7161d = a(context, this.f7160c);
                    m mVarA = m.a(context.getApplicationContext());
                    try {
                        RobloxSettings.initConfig(context);
                        String strUserAgent = RobloxSettings.userAgent();
                        com.roblox.client.util.g.b("AppManager", "ROBLOX | User-Agent = " + strUserAgent);
                        Platform.setRobloxUserAgent(strUserAgent);
                        Platform.setSkipCookie(true);
                        com.roblox.platform.g.a(strUserAgent);
                        com.roblox.platform.g.a(e());
                        com.roblox.platform.g.a(new com.roblox.platform.b() { // from class: com.roblox.client.i.c.1
                            @Override // com.roblox.platform.b
                            public String a() {
                                if (com.roblox.client.b.aB()) {
                                    return com.roblox.client.c.a().c();
                                }
                                return null;
                            }

                            @Override // com.roblox.platform.b
                            public String b() {
                                if (com.roblox.client.b.aD()) {
                                    return com.roblox.client.c.a().e();
                                }
                                return null;
                            }
                        });
                        g.a(context, null);
                        f fVarA = f.a();
                        com.roblox.abtesting.a aVarA = com.roblox.abtesting.a.a();
                        aVarA.a(fVarA);
                        aVarA.a(new com.roblox.client.http.h());
                        aVarA.a(mVarA);
                        h.a();
                        com.roblox.client.c.a().a((c.a) null);
                        com.roblox.client.c.a.a().a(context, fVarA);
                        com.roblox.client.i.a.a(context).a(this);
                        com.roblox.client.d.c.a();
                        Locale locale = Locale.getDefault();
                        com.roblox.client.locale.a.a().a(locale);
                        com.roblox.client.b.c.a("Locale", "DeviceLocale", locale != null ? locale.toString() : "NULL");
                        c(context);
                        this.f7159b = a.APP_INIT_STATUS_OK;
                        com.roblox.client.util.g.b("AppManager", "initialize: Completed OK. elapsedTime(ms) = " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                    } catch (IOException e) {
                        com.roblox.client.util.g.e("AppManager", "*** Exception caught in initConfig: " + e.getMessage());
                        this.f7159b = a.APP_INIT_STATUS_ERROR;
                        throw new RuntimeException("IOException in RobloxSettings.initConfig()");
                    }
                }
            }
        }
    }

    private com.roblox.platform.c e() {
        com.roblox.client.util.c cVar = new com.roblox.client.util.c();
        String baseUrlValue = RobloxSettings.getBaseUrlValue();
        String baseUrlApiValue = RobloxSettings.getBaseUrlApiValue();
        return new com.roblox.platform.c(RobloxSettings.getDomain(), cVar.f(baseUrlValue), baseUrlApiValue != null ? cVar.f(baseUrlApiValue) : RobloxSettings.API_SUB_DOMAIN);
    }

    private void c(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(new NotificationChannel("channel_general", context.getString(R.string.Notifications_PushNotifications_Settings_ChannelNameGeneral), 3));
        }
    }

    @Override // com.roblox.client.i.a.InterfaceC0108a
    public void a(Context context, String str) {
        com.roblox.client.util.g.d("AppManager", "onActivityCreationLimit: activityName = " + str);
        com.roblox.client.b.c.a("ActivityTracker", "CreationLimit", str);
        if (com.roblox.client.b.av() && g.contains(str)) {
            com.roblox.client.util.g.e("AppManager", "!!!!! ACTIVITIES CREATED TOO MANY TIMES !!!!!");
            com.roblox.client.util.g.e("AppManager", "!!!!!           RESTART THE APP         !!!!!");
            com.roblox.client.b.c.a("ActivityTracker", "RestartApp", str);
            k.a(context, 100L);
            k.a();
        }
    }

    public boolean d() {
        return this.f;
    }

    public void a(boolean z) {
        this.f = z;
    }

    private com.google.android.gms.analytics.h a(Context context, boolean z) {
        if (!z) {
            return null;
        }
        return com.google.android.gms.analytics.d.a(context).a(R.xml.android_tracker);
    }
}
