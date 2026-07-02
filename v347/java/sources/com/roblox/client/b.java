package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.roblox.client.components.q;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f6437a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f6439c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f6438b = d.SETTINGS_CHECK_STATE_NONE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a<Boolean> f6440d = new a<>("EnableRbxAnalytics", true);
    private static a<Boolean> e = new a<>("EnableRbxReportingManager", true);
    private static a<Integer> f = new a<>("InfluxThrottleRate", 10);
    private static a<String> g = new a<>("InfluxTcpHost", "ec2-54-165-151-168.compute-1.amazonaws.com");
    private static a<Integer> h = new a<>("InfluxTcpPort", 8094);
    private static a<Integer> i = new a<>("InfluxTcpTimeToLiveInSeconds", 10);
    private static a<Boolean> j = new a<>("EnablePrerollAds", false);
    private static a<Boolean> k = new a<>("EnableAlwaysShowAds", false);
    private static a<Boolean> l = new a<>("EnableReportAbuse", false);
    private static a<String> m = new a<>("SignalRPath", "notifications");
    private static a<String> n = new a<>("SignalRSubdomain", "realtime");
    private static a<String> o = new a<>("SignalRUrl", null);
    private static a<Boolean> p = new a<>("EnableSignalR", true);
    private static a<Boolean> q = new a<>("EnableNativeSignalRv4", true);
    private static a<Integer> r = new a<>("NativeSignalRPercentageRollout", 100);
    private static a<Boolean> s = new a<>("EnableSignalRToEngine", true);
    private static a<Integer> t = new a<>("NumParticipantsInGroupChat", 6);
    private static a<Boolean> u = new a<>("StripEmojiFromChatInput", false);
    private static a<Integer> v = new a<>("NumSecondsBetweenChatCluster", 300);
    private static a<Long> w = new a<>("MaxSignalRReconnectedTimeout", 15000L);
    private static a<Long> x = new a<>("MaxSignalRReconnectedWaitTime", 10000L);
    private static a<String> y = new a<>("RobloxUrlsPattern", "(https?\\:\\/\\/)?(?:www\\.)?([a-z0-9\\-]{2,}\\.)*(((m|de|www|web|api|blog|wiki|help|corp|polls|bloxcon|developer|devforum|forum)\\.roblox\\.com|robloxlabs\\.com)|(www\\.shoproblox\\.com))((\\/[A-Za-z0-9-+&amp;@#\\/%?=~_|!:,.;]*)|(\\b|\\s))");
    private static a<Boolean> z = new a<>("EnableOpenExternalUrlsInBrowser", false);
    private static a<String> A = new a<>("RecaptchaPublicKey", "");
    private static a<Boolean> B = new a<>("EnableForgotPassword", true);
    private static a<Boolean> C = new a<>("GoogleVR", false);
    private static a<Boolean> D = new a<>("EnableAndroidTabletAvatarEditor", false);
    private static a<String> E = new a<>("NotificationStreamPath", "notificationstream/embedded");
    private static a<Boolean> F = new a<>("EnableForwardAppSettingsToEngine", true);
    private static a<Integer> G = new a<>("BreakpadCrashDumpThrottleRate", 0);
    private static a<Boolean> H = new a<>("EnableShellUploadCrashDump", false);
    private static a<Boolean> I = new a<>("EnableEndGameProcess", true);
    private static a<Boolean> J = new a<>("EnableDelayFinishPostGame", false);
    private static a<Boolean> K = new a<>("EnableStopGameOnTimeout", true);
    private static a<Boolean> L = new a<>("EnableStopEngineAsync", true);
    private static a<String> M = new a<>("VisibleAgeStyleNativeShell", q.ALL.a());
    private static a<String> N = new a<>("VisibleAgeStyleLuaApp", q.ALL.a());
    private static a<Integer> O = new a<>("NumberOfFailedLoginsBeforeResetPasswordMessage", 5);
    private static a<Integer> P = new a<>("PostLoginTimeoutMilliseconds", 10000);
    private static a<Boolean> Q = new a<>("EnableEncryptedDeviceHandle", true);
    private static a<Long> R = new a<>("CatalogPromoAssetId", -1L);
    private static a<Long> S = new a<>("ChatTypingExpireMilliseconds", 8000L);
    private static a<Long> T = new a<>("ChatTypingSenderThrottleMilliseconds", 3000L);
    private static a<Boolean> U = new a<>("EnableChatTypingIndicator", true);
    private static a<Boolean> V = new a<>("EnableOneOnOneChatJoinGame", true);
    private static a<Boolean> W = new a<>("AppRatingsEnabled", true);
    private static a<Integer> X = new a<>("AppRatingsPlayTimeInMinutes", 10);
    private static a<Integer> Y = new a<>("AppRatingsNumberOfFriendsForLaunch", 1);
    private static a<Integer> Z = new a<>("AppRatingsLaunchCount", 3);
    private static a<Integer> aa = new a<>("AppRatingsDaysSinceFirstUse", 5);
    private static a<Integer> ab = new a<>("AppRatingsLaunchesUntilReminder", 4);
    private static a<Integer> ac = new a<>("AppRatingsDaysUntilReminder", 6);
    private static a<Integer> ad = new a<>("AppRatingsGamesPlayed", 7);
    private static a<String> ae = new a<>("ActivityLimitParams", "5;10;10;3");
    private static a<Boolean> af = new a<>("EnableAppRestartWhenOverLimit", false);
    private static a<Boolean> ag = new a<>("EnableFinishActivityIfNoSettings", true);
    private static a<Long> ah = new a<>("TimeBeforeWebViewRefreshInMs", 180000L);
    private static a<Boolean> ai = new a<>("EnableGoogleGrantPendingOnLaunch", true);
    private static a<Boolean> aj = new a<>("EnableStaticResponseTestingInDev", false);
    private static a<Boolean> ak = new a<>("EnablePlatformHttp", true);
    private static a<Boolean> al = new a<>("EnableAmazonPushNotifications", false);
    private static a<Boolean> am = new a<>("EnableDeviceHandleInHeaderV2", true);
    private static a<Boolean> an = new a<>("EnableDeviceHandleInCookies", true);
    private static a<Boolean> ao = new a<>("EnableDeviceHandleTimestamp2", false);
    private static a<Long> ap = new a<>("DeviceHandleTimestampUpdateInterval", 60L);
    private static a<Boolean> aq = new a<>("EnableClientSettingsRetry", false);
    private static a<Integer> ar = new a<>("SettingsCheckIntervalInSecs", 0);
    private static a<Boolean> as = new a<>("EnableClearBadCredential", true);
    private static a<Boolean> at = new a<>("EnabledEventStreamBatchMode", true);
    private static a<Integer> au = new a<>("EventStreamBatchSize", 10);
    private static a<Integer> av = new a<>("EventStreamBatchTimeInSecs", 60);
    private static a<Boolean> aw = new a<>("EnableChromeResumeGame", false);
    private static a<Boolean> ax = new a<>("EnableLuaChatV4", false);
    private static a<Boolean> ay = new a<>("EnableLuaAppStarterScript", false);
    private static a<Boolean> az = new a<>("EnableLuaHomeOnTablet", false);
    private static a<Boolean> aA = new a<>("EnableLuaGamesOnTablet", false);
    private static a<Boolean> aB = new a<>("EnableLuaMoreOnTablet", false);
    private static a<Boolean> aC = new a<>("EnableLuaHomeOnPhone", false);
    private static a<Boolean> aD = new a<>("EnableLuaGamesOnPhone", false);
    private static a<Boolean> aE = new a<>("EnableLuaMoreOnPhone", false);
    private static a<Boolean> aF = new a<>("EnableReportRejectionExecution", false);
    private static a<Boolean> aG = new a<>("EnableReportingExecutor", false);
    private static a<Boolean> aH = new a<>("EnableNewLandingPage", true);
    private static a<Boolean> aI = new a<>("EnableNewLandingTablet", true);
    private static a<Boolean> aJ = new a<>("EnableUsernameSuggestions", true);
    private static a<Boolean> aK = new a<>("EnableDisplayScaling2", false);
    private static a<Boolean> aL = new a<>("EnableLuaChatTabletMode", false);
    private static a<Boolean> aM = new a<>("EnableLuaChatChromeOS", false);
    private static a<Boolean> aN = new a<>("EnableFragmentSignUpMVP", false);
    private static a<String> aO = new a<>("ABTestRemoveGuestModeAllUsers", "Android.AllUsers.RemoveGuestMode");
    private static a<Boolean> aP = new a<>("EnableSingleActivityGlView", false);
    private static a<Boolean> aQ = new a<>("EnablePostUp", false);
    private static a<Boolean> aR = new a<>("EnableForgotPasswordWebView", true);
    private static a<Boolean> aS = new a<>("EnableSamsungFlickeringFix", true);
    private static a<Boolean> aT = new a<>("EnableSingleProcess", false);
    private static a<Boolean> aU = new a<>("EnableSamsungNSingleProcess", false);
    private static a<Boolean> aV = new a<>("EnableGameRecreatedFix", false);
    private static a<Boolean> aW = new a<>("EnableMarshallerAsync", false);
    private static a<Boolean> aX = new a<>("EnableSpinnerWhileStoppingDataModel", false);
    private static a<Boolean> aY = new a<>("UseSyncTextboxWithUTF8ByteArrayEncoding", false);
    private static a<Boolean> aZ = new a<>("DisableSurfaceStateDestroyedOnStop", false);
    private static a<Boolean> ba = new a<>("EnableGetPriceForPurchaseOnGooglePlay", true);
    private static a<Boolean> bb = new a<>("EnableGetPriceForPurchaseOnAmazon", false);
    private static a<Boolean> bc = new a<>("StopLuaAppRenderingScreenOff", false);
    private static a<Boolean> bd = new a<>("EnableStartGLSurfaceWithVisibilityCheck", false);
    private static a<Boolean> be = new a<>("EnableAppsFlyer", true);
    private static a<Integer> bf = new a<>("MaxNumberOfContactsToSync", 5000);
    private static a<String> bg = new a<>("SmsInviteTextWithUsernameFormat", "Join me on Roblox - the world’s largest social platform for play! My username is %1$s.");
    private static a<String> bh = new a<>("RobloxWebLink", "www.roblox.com");
    private static a<Boolean> bi = new a<>("EnableGameLinksInChat", true);
    private static a<String> bj = new a<>("ABTestAppReminderNotificationV1", "Android.AllUsers.AppReminderNotification");
    private static a<Integer> bk = new a<>("InactivityDaysBeforeReminderNotification", 7);
    private static a<String> bl = new a<>("ReminderNotifTextWithUsernameFormat", "%1$s, play the most popular games on Roblox now!");
    private static a<String> bm = new a<>("ReminderNotifShortTextWithUsernameFormat", "%1$s, check out these top games!");
    private static a<Boolean> bn = new a<>("EnablePurchaseEmulatorDetection", false);
    private static a<Boolean> bo = new a<>("EnableNoPurchaseEmulator", false);
    private static a<Boolean> bp = new a<>("EnableLowDpiScaling", false);
    private static a<Integer> bq = new a<>("LowDpiScalingThreshold", 320);
    private static a<Boolean> br = new a<>("EnableContactUpSellCallback", true);
    private static a<Boolean> bs = new a<>("EnableContactsUpdateCall", true);
    private static a<String> bt = new a<>("ContactsLearnMoreUrl", "https://en.help.roblox.com/hc/articles/360000015683");
    private static a<String> bu = new a<>("GamesUrlPath", "games/?SortFilter=default&TimeFilter=0");
    private static a<Boolean> bv = new a<>("EnableSettingsGroupsOnMorePage", true);
    private static a<Boolean> bw = new a<>("EnablePortraitModeAndroid2", false);
    private static a<Boolean> bx = new a<>("EnableCreateGamesOnMorePage", true);
    private static a<Boolean> by = new a<>("EnableAppsFlyerDiagCounters", false);
    private static a<Boolean> bz = new a<>("EnableAppsFlyerEventStream", false);
    private static a<Integer> bA = new a<>("MultipleLocaleFetchPercentageRollOut", 0);
    private static a<Boolean> bB = new a<>("EnableAuthLoginWithAll", false);
    private static a<Integer> bC = new a<>("AuthLoginPercentageRollout", 0);
    private static a<String> bD = new a<>("AuthLoginTestDevicesBTIDs", "");
    private static a<Boolean> bE = new a<>("EnableAuthLoginWithEmail", false);
    private static a<Boolean> bF = new a<>("EnableAuthLoginWithPhone", false);
    private static a<Integer> bG = new a<>("DynamicStringsImplementationPercentageRollout", 0);
    private static a<Boolean> bH = new a<>("ReminderNotifShowNotif", true);
    private static a<Boolean> bI = new a<>("EnablePreloadLuaApp3", false);
    private static a<String> bJ = new a<>("ABTestLuaGameAndHomePhone", "AndroidPhone.AllUsers.WebToLuaTransitionGameAndHome");
    private static a<String> bK = new a<>("ABTestLuaGameAndHomeTablet", "AndroidTablet.AllUsers.WebToLuaTransitionGameAndHome");
    private static a<Boolean> bL = new a<>("UsePresenceBulkNotificationsAndroid", false);
    private static a<String> bM = new a<>("ABTestEnableNewLoginUIDesign", "Android.AllUsers.NewLoginUIDesign");
    private static a<String> bN = new a<>("CrashUploadToBacktraceUrl", "https://roblox.sp.backtrace.io:8443/post?format=minidump&token=417ecb0fbc032ce087e6af3b780c298e3356089f050c8130d2318109e80417a4");
    private static a<Integer> bO = new a<>("CrashUploadToBacktracePercentage", 0);
    private static a<Boolean> bP = new a<>("EnableNativeBottomBarVisibleReporting", false);
    private static a<Boolean> bQ = new a<>("LuaAppLaunchWebOverlayWithOptions", false);
    private static a<Boolean> bR = new a<>("EnableNotificationStreamOpenEvent", false);
    private static a<Boolean> bS = new a<>("EnableChatOpenEvent", true);
    private static a<Boolean> bT = new a<>("EnableNotificationBadgeCountRobloxEvent", false);
    private static a<Boolean> bU = new a<>("EnableCrashUploadToBacktraceLuaChatOnly", false);
    private static a<Boolean> bV = new a<>("EnableSessionReporter", false);
    private static a<Boolean> bW = new a<>("EnableSessionReporterWriteGALongLabels", false);
    private static a<String> bX = new a<>("UpdatedStringsJson", "");
    private static a<Boolean> bY = new a<>("EnableClearIconForUsernamePasswordLoginFields", false);
    private static a<Long> bZ = new a<>("DynamicStringsApiThrottleRate", 7200000L);
    private static a<Boolean> ca = new a<>("EnableSplitTotalStartupTimeByLua", false);
    private static a<Integer> cb = new a<>("PercentReportingByCountryCode", 0);
    private static a<Boolean> cc = new a<>("EnableAllFriendshipSignalREvents", true);
    private static int cd = 0;
    private static ArrayList<a> ce = new ArrayList<>();

    public interface c {
        void a(boolean z, com.roblox.client.http.j jVar);
    }

    private enum d {
        SETTINGS_CHECK_STATE_NONE,
        SETTINGS_CHECK_STATE_IN_PROGRESS,
        SETTINGS_CHECK_STATE_DONE_CHANGED
    }

    static {
        int i2 = 0;
        Field[] declaredFields = b.class.getDeclaredFields();
        while (true) {
            int i3 = i2;
            if (i3 < declaredFields.length) {
                if (declaredFields[i3].getType().equals(a.class)) {
                    try {
                        ce.add((a) declaredFields[i3].get(null));
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    }
                }
                i2 = i3 + 1;
            } else {
                com.roblox.client.util.g.b("AndroidAppSettings", "AppSettings size:" + ce.size());
                return;
            }
        }
    }

    public static boolean a() {
        return f6437a;
    }

    static boolean b() {
        return f6438b == d.SETTINGS_CHECK_STATE_DONE_CHANGED;
    }

    public static com.roblox.client.http.c a(Context context, c cVar) {
        AsyncTaskC0095b asyncTaskC0095b = new AsyncTaskC0095b(context, RobloxSettings.appSettingsUrl(), cVar);
        asyncTaskC0095b.a(new com.roblox.client.http.a.b());
        asyncTaskC0095b.c();
        return asyncTaskC0095b;
    }

    private static void a(final c cVar) {
        new com.roblox.client.http.c(RobloxSettings.appSettingsUrl(), new com.roblox.client.http.l() { // from class: com.roblox.client.b.1
            @Override // com.roblox.client.http.l
            public void a(com.roblox.client.http.j jVar) {
                cVar.a((jVar == null || jVar.b() != 200 || jVar.a().isEmpty()) ? false : true, jVar);
            }

            @Override // com.roblox.client.http.l
            public void b(com.roblox.client.http.j jVar) {
            }
        }).c();
    }

    static void a(final Context context) {
        if (ci() == 0 || f6438b != d.SETTINGS_CHECK_STATE_NONE) {
            return;
        }
        if (f6439c == 0 || f6439c < SystemClock.elapsedRealtime()) {
            f6438b = d.SETTINGS_CHECK_STATE_IN_PROGRESS;
            a(new c() { // from class: com.roblox.client.b.2
                @Override // com.roblox.client.b.c
                public void a(boolean z2, com.roblox.client.http.j jVar) {
                    if (z2) {
                        String strA = jVar.a();
                        com.roblox.client.util.g.c("AndroidAppSettings", "checkServerForSettingsChange: Retrieved settings. Length = " + strA.length());
                        if (b.c(context, strA)) {
                            com.roblox.client.util.g.b("AndroidAppSettings", "checkServerForSettingsChange: Inform the App that it needs to restart...");
                            d unused = b.f6438b = d.SETTINGS_CHECK_STATE_DONE_CHANGED;
                            return;
                        }
                    } else {
                        com.roblox.client.util.g.d("AndroidAppSettings", "checkServerForSettingsChange: Failed to get settings.");
                    }
                    d unused2 = b.f6438b = d.SETTINGS_CHECK_STATE_NONE;
                    long unused3 = b.f6439c = SystemClock.elapsedRealtime() + b.ci();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Context context, String str) {
        SharedPreferences keyValues = RobloxSettings.getKeyValues(context);
        return !TextUtils.equals(keyValues != null ? keyValues.getString("AndroidAppSettingsCache", "{}") : "{}", str);
    }

    public static void b(Context context) {
        d(context);
        e(context);
    }

    /* JADX INFO: renamed from: com.roblox.client.b$b, reason: collision with other inner class name */
    private static class AsyncTaskC0095b extends com.roblox.client.http.c {
        private Context h;
        private c i;
        private boolean j;

        public AsyncTaskC0095b(Context context, String str, c cVar) {
            super(str);
            this.j = false;
            this.h = context;
            this.i = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.roblox.client.http.a, android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.roblox.client.http.j doInBackground(Void... voidArr) {
            com.roblox.client.http.j jVarA = super.doInBackground(voidArr);
            if (jVarA != null && jVarA.b() == 200 && !jVarA.a().isEmpty()) {
                try {
                    String strA = jVarA.a();
                    JSONObject jSONObject = new JSONObject(strA);
                    b.d(this.h, strA);
                    b.a(jSONObject, false);
                    b.e(this.h);
                    this.j = true;
                    long unused = b.f6439c = SystemClock.elapsedRealtime() + b.ci();
                } catch (Exception e) {
                    com.roblox.client.util.g.d("SettingsRequest", "Failed to parse settings! Exception: " + e);
                    b.cf();
                    b.e(this.h);
                    new com.roblox.client.g.a("Android-FlagsLoading-Error").b("ErrorCode", "Failed to parse flags json").b("ErrorMsg", e.getMessage() + " JSON: " + jVarA.a()).b();
                }
            } else {
                com.roblox.client.util.g.d("SettingsRequest", "Failed to retrieve settings!");
                b.cf();
                b.e(this.h);
                new com.roblox.client.g.a("Android-FlagsLoading-Error").b("ErrorCode", jVarA != null ? Integer.valueOf(jVarA.b()) : "Null response").b("ErrorMsg", jVarA != null ? jVarA.a() : "Null response").b();
            }
            boolean unused2 = b.f6437a = true;
            return jVarA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.roblox.client.http.a, android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(com.roblox.client.http.j jVar) {
            super.onPostExecute(jVar);
            if (this.i != null) {
                this.i.a(this.j, jVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cf() {
        d(null);
    }

    private static void d(Context context) {
        a(f(context), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context) {
        JSONObject jSONObjectA;
        if (com.roblox.client.d.b.a() && (jSONObjectA = com.roblox.client.d.a.a(context)) != null) {
            a(jSONObjectA, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str) {
        RobloxSettings.getKeyValues(context).edit().putString("AndroidAppSettingsCache", str).apply();
    }

    private static JSONObject f(Context context) {
        SharedPreferences keyValues = context != null ? RobloxSettings.getKeyValues(context) : RobloxSettings.getKeyValues();
        try {
            return new JSONObject(keyValues != null ? keyValues.getString("AndroidAppSettingsCache", "{}") : "{}");
        } catch (JSONException e2) {
            return new JSONObject();
        }
    }

    public static void a(JSONObject jSONObject, boolean z2) {
        a(jSONObject, z2, true);
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                a(new JSONObject(str), false);
            } catch (JSONException e2) {
                com.roblox.client.b.c.a("AndroidAppSettings: JSONException caught in updating settings (String)");
            }
        }
    }

    private static void a(JSONObject jSONObject, boolean z2, boolean z3) {
        Object objOptString;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < ce.size()) {
                a aVar = ce.get(i3);
                String strA = aVar.a();
                if (jSONObject.has(strA)) {
                    if (aVar.b() instanceof Boolean) {
                        objOptString = Boolean.valueOf(jSONObject.optBoolean(strA));
                    } else if (aVar.b() instanceof Long) {
                        objOptString = Long.valueOf(jSONObject.optLong(strA));
                    } else if (aVar.b() instanceof Integer) {
                        objOptString = Integer.valueOf(jSONObject.optInt(strA));
                    } else if (aVar.b() instanceof Double) {
                        objOptString = Double.valueOf(jSONObject.optDouble(strA));
                    } else {
                        objOptString = jSONObject.optString(strA);
                    }
                    if (z2) {
                        aVar.b(objOptString);
                    } else {
                        aVar.a(objOptString);
                    }
                } else if (z3) {
                    if (z2) {
                        aVar.b(null);
                    } else {
                        aVar.a(null);
                    }
                }
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    public static void c() {
        cg();
    }

    private static void cg() {
        cd = new Random().nextInt(100);
    }

    public static int d() {
        long jB = com.roblox.client.i.h.a().b();
        if (jB > -1) {
            return (int) (jB % 100);
        }
        return 100;
    }

    public static int e() {
        long jB = com.roblox.client.c.a().b();
        if (jB != -1) {
            return (int) (jB % 100);
        }
        return 99;
    }

    public static boolean f() {
        return h();
    }

    public static boolean g() {
        return G() && d() < r.b().intValue();
    }

    public static boolean h() {
        return F();
    }

    public static boolean i() {
        return cd < x();
    }

    public static boolean j() {
        if (bJ()) {
            return ch() || e() < bK();
        }
        return false;
    }

    private static boolean ch() {
        return bN().contains(String.valueOf(com.roblox.client.c.a().b()));
    }

    public static class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f6443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private T f6444b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private T f6446d = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private T f6445c = null;

        public a(String str, T t) {
            this.f6443a = str;
            this.f6444b = t;
        }

        public String a() {
            return this.f6443a;
        }

        public T b() {
            if (this.f6445c != null) {
                return this.f6445c;
            }
            if (this.f6446d != null) {
                return this.f6446d;
            }
            return this.f6444b;
        }

        public void a(T t) {
            this.f6446d = t;
        }

        public T c() {
            return this.f6445c;
        }

        public void b(T t) {
            this.f6445c = t;
        }
    }

    public static String k() {
        if (!F.b().booleanValue()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (a aVar : ce) {
                jSONObject.put(aVar.a(), aVar.b());
            }
        } catch (JSONException e2) {
            com.roblox.client.b.c.a("AndroidAppSettings.getAppSettingsForEngine: JSONException caught");
        }
        return jSONObject.toString();
    }

    public static long l() {
        return bZ.b().longValue();
    }

    public static long m() {
        return S.b().longValue();
    }

    public static long n() {
        return T.b().longValue();
    }

    public static boolean o() {
        return e() < bA.b().intValue();
    }

    public static String p() {
        return bN.b();
    }

    public static String q() {
        return bX.b();
    }

    public static boolean r() {
        if (bU.b().booleanValue()) {
            return com.roblox.client.n.a.a();
        }
        return e() < bO.b().intValue();
    }

    public static boolean s() {
        return e() < bG.b().intValue();
    }

    public static boolean t() {
        return U.b().booleanValue();
    }

    public static boolean u() {
        return f6440d.b().booleanValue();
    }

    public static long v() {
        return R.b().longValue();
    }

    public static boolean w() {
        return e.b().booleanValue();
    }

    public static int x() {
        return f.b().intValue();
    }

    public static String y() {
        return g.b();
    }

    public static int z() {
        return h.b().intValue();
    }

    public static int A() {
        return i.b().intValue();
    }

    public static boolean B() {
        return j.b().booleanValue();
    }

    public static boolean C() {
        return com.roblox.client.d.b.a() && k.b().booleanValue();
    }

    public static boolean D() {
        return l.b().booleanValue();
    }

    public static String E() {
        return m.b();
    }

    public static boolean F() {
        return p.b().booleanValue();
    }

    public static boolean G() {
        return q.b().booleanValue();
    }

    public static boolean H() {
        return s.b().booleanValue();
    }

    public static String I() {
        return n.b();
    }

    public static String J() {
        return o.b();
    }

    public static int K() {
        return t.b().intValue();
    }

    public static boolean L() {
        return u.b().booleanValue();
    }

    public static int M() {
        return v.b().intValue();
    }

    public static long N() {
        return w.b().longValue();
    }

    public static long O() {
        return x.b().longValue();
    }

    public static String P() {
        return y.b();
    }

    public static boolean Q() {
        return z.b().booleanValue();
    }

    public static String R() {
        return A.b();
    }

    public static boolean S() {
        return B.b().booleanValue();
    }

    public static boolean T() {
        return C.b().booleanValue();
    }

    public static int U() {
        return P.b().intValue();
    }

    public static boolean V() {
        return D.b().booleanValue();
    }

    public static String W() {
        return E.b();
    }

    static boolean X() {
        return ((int) (Math.random() * 100.0d)) < G.b().intValue();
    }

    public static boolean Y() {
        return H.b().booleanValue();
    }

    public static boolean Z() {
        if (aS.b().booleanValue() && com.roblox.client.util.h.b()) {
            return false;
        }
        return I.b().booleanValue();
    }

    public static boolean aa() {
        if (aU.b().booleanValue() && com.roblox.client.util.h.b()) {
            return true;
        }
        return aT.b().booleanValue();
    }

    public static boolean ab() {
        return aV.b().booleanValue();
    }

    public static boolean ac() {
        return aW.b().booleanValue();
    }

    public static boolean ad() {
        return aX.b().booleanValue();
    }

    public static boolean ae() {
        return J.b().booleanValue();
    }

    public static boolean af() {
        return K.b().booleanValue();
    }

    public static String ag() {
        return M.b();
    }

    public static String ah() {
        return N.b();
    }

    public static int ai() {
        return O.b().intValue();
    }

    public static boolean aj() {
        return Q.b().booleanValue();
    }

    public static boolean ak() {
        return bw.b().booleanValue();
    }

    public static boolean al() {
        return V.b().booleanValue();
    }

    public static int am() {
        return X.b().intValue();
    }

    public static int an() {
        return Y.b().intValue();
    }

    public static int ao() {
        return Z.b().intValue();
    }

    public static int ap() {
        return aa.b().intValue();
    }

    public static int aq() {
        return ab.b().intValue();
    }

    public static int ar() {
        return ac.b().intValue();
    }

    public static int as() {
        return ad.b().intValue();
    }

    public static boolean at() {
        return W.b().booleanValue();
    }

    public static String au() {
        return ae.b();
    }

    public static boolean av() {
        return af.b().booleanValue();
    }

    public static boolean aw() {
        return ag.b().booleanValue();
    }

    public static long ax() {
        return ah.b().longValue();
    }

    public static boolean ay() {
        return ai.b().booleanValue();
    }

    public static boolean az() {
        return aj.b().booleanValue();
    }

    public static boolean aA() {
        return ak.b().booleanValue();
    }

    public static boolean aB() {
        return am.b().booleanValue();
    }

    public static boolean aC() {
        return an.b().booleanValue();
    }

    public static boolean aD() {
        return ao.b().booleanValue();
    }

    public static long aE() {
        return ap.b().longValue();
    }

    public static boolean aF() {
        return aq.b().booleanValue();
    }

    public static boolean aG() {
        return bY.b().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long ci() {
        return ((long) ar.b().intValue()) * 1000;
    }

    public static boolean aH() {
        return as.b().booleanValue();
    }

    static boolean aI() {
        return at.b().booleanValue();
    }

    public static int aJ() {
        return au.b().intValue();
    }

    public static int aK() {
        return av.b().intValue();
    }

    public static boolean aL() {
        return aw.b().booleanValue();
    }

    public static boolean aM() {
        return ax.b().booleanValue();
    }

    public static a<Boolean> aN() {
        return ax;
    }

    public static boolean aO() {
        return ay.b().booleanValue();
    }

    public static boolean aP() {
        return az.b().booleanValue();
    }

    public static boolean aQ() {
        return aC.b().booleanValue();
    }

    public static boolean aR() {
        return aA.b().booleanValue();
    }

    public static boolean aS() {
        return aB.b().booleanValue();
    }

    public static boolean aT() {
        return aD.b().booleanValue();
    }

    public static boolean aU() {
        return aE.b().booleanValue();
    }

    public static boolean aV() {
        return aF.b().booleanValue();
    }

    public static boolean aW() {
        return aG.b().booleanValue();
    }

    public static boolean aX() {
        return aH.b().booleanValue();
    }

    public static boolean aY() {
        return aI.b().booleanValue();
    }

    public static boolean aZ() {
        return aJ.b().booleanValue();
    }

    public static boolean ba() {
        return aK.b().booleanValue();
    }

    public static boolean bb() {
        return aL.b().booleanValue();
    }

    public static boolean bc() {
        return aM.b().booleanValue();
    }

    public static boolean bd() {
        return aN.b().booleanValue();
    }

    public static String be() {
        return aO.b();
    }

    public static boolean bf() {
        return aP.b().booleanValue();
    }

    public static boolean bg() {
        return aQ.b().booleanValue();
    }

    public static boolean bh() {
        return aR.b().booleanValue();
    }

    public static boolean bi() {
        return aY.b().booleanValue();
    }

    public static boolean bj() {
        return aZ.b().booleanValue();
    }

    public static boolean bk() {
        return ba.b().booleanValue();
    }

    public static boolean bl() {
        return bc.b().booleanValue();
    }

    public static boolean bm() {
        return bd.b().booleanValue();
    }

    public static boolean bn() {
        return be.b().booleanValue();
    }

    public static int bo() {
        return bf.b().intValue();
    }

    public static String bp() {
        return bg.b();
    }

    public static String bq() {
        return bh.b();
    }

    public static boolean br() {
        return bi.b().booleanValue();
    }

    public static boolean bs() {
        return cc.b().booleanValue();
    }

    public static String bt() {
        return bj.b();
    }

    public static int bu() {
        return bk.b().intValue();
    }

    public static String bv() {
        return bl.b();
    }

    public static String bw() {
        return bm.b();
    }

    public static boolean bx() {
        return bn.b().booleanValue();
    }

    public static boolean by() {
        return bo.b().booleanValue();
    }

    public static boolean bz() {
        return bp.b().booleanValue();
    }

    public static int bA() {
        return bq.b().intValue();
    }

    public static boolean bB() {
        return br.b().booleanValue();
    }

    public static boolean bC() {
        return bs.b().booleanValue();
    }

    public static String bD() {
        return bt.b();
    }

    static String bE() {
        return bu.b();
    }

    public static boolean bF() {
        return bv.b().booleanValue();
    }

    public static boolean bG() {
        return bx.b().booleanValue();
    }

    public static boolean bH() {
        return by.b().booleanValue();
    }

    public static boolean bI() {
        return bz.b().booleanValue();
    }

    public static boolean bJ() {
        return bB.b().booleanValue();
    }

    public static int bK() {
        return bC.b().intValue();
    }

    public static boolean bL() {
        return bF.b().booleanValue();
    }

    public static boolean bM() {
        return bE.b().booleanValue();
    }

    public static String bN() {
        return bD.b();
    }

    public static boolean bO() {
        return bH.b().booleanValue();
    }

    public static String bP() {
        return bJ.b();
    }

    public static String bQ() {
        return bK.b();
    }

    public static boolean bR() {
        return bI.b().booleanValue();
    }

    public static boolean bS() {
        return bL.b().booleanValue();
    }

    public static String bT() {
        return bM.b();
    }

    public static boolean bU() {
        return bP.b().booleanValue();
    }

    public static boolean bV() {
        return bQ.b().booleanValue();
    }

    public static boolean bW() {
        return bR.b().booleanValue();
    }

    public static boolean bX() {
        return bS.b().booleanValue();
    }

    public static boolean bY() {
        return bT.b().booleanValue();
    }

    public static boolean bZ() {
        return bV.b().booleanValue();
    }

    public static boolean ca() {
        return bW.b().booleanValue();
    }

    public static boolean cb() {
        return ca.b().booleanValue();
    }

    public static int cc() {
        return cb.b().intValue();
    }
}
