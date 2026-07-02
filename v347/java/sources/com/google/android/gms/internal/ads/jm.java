package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class jm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Handler f5184a = new je(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private String f5187d;

    @GuardedBy("this")
    private Pattern g;

    @GuardedBy("this")
    private Pattern h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5185b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5186c = true;
    private boolean e = false;
    private boolean f = false;

    public static Bitmap a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return bitmapCreateBitmap;
    }

    public static Bundle a(alb albVar) {
        String str;
        String strC;
        String strE;
        if (albVar == null) {
            return null;
        }
        if (!((Boolean) aoo.f().a(aro.W)).booleanValue()) {
            if (!((Boolean) aoo.f().a(aro.Y)).booleanValue()) {
                return null;
            }
        }
        if (com.google.android.gms.ads.internal.aw.i().l().b() && com.google.android.gms.ads.internal.aw.i().l().d()) {
            return null;
        }
        if (albVar.d()) {
            albVar.c();
        }
        akv akvVarB = albVar.b();
        if (akvVarB != null) {
            String strB = akvVarB.b();
            String strC2 = akvVarB.c();
            String strD = akvVarB.d();
            if (strB != null) {
                com.google.android.gms.ads.internal.aw.i().l().a(strB);
            }
            if (strD != null) {
                com.google.android.gms.ads.internal.aw.i().l().b(strD);
                strC = strB;
                str = strC2;
                strE = strD;
            } else {
                strC = strB;
                str = strC2;
                strE = strD;
            }
        } else {
            str = null;
            strC = com.google.android.gms.ads.internal.aw.i().l().c();
            strE = com.google.android.gms.ads.internal.aw.i().l().e();
        }
        Bundle bundle = new Bundle(1);
        if (strE != null) {
            if (((Boolean) aoo.f().a(aro.Y)).booleanValue() && !com.google.android.gms.ads.internal.aw.i().l().d()) {
                bundle.putString("v_fp_vertical", strE);
            }
        }
        if (strC != null) {
            if (((Boolean) aoo.f().a(aro.W)).booleanValue() && !com.google.android.gms.ads.internal.aw.i().l().b()) {
                bundle.putString("fingerprint", strC);
                if (!strC.equals(str)) {
                    bundle.putString("v_fp", str);
                }
            }
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    public static DisplayMetrics a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.webkit.WebResourceResponse a(java.net.HttpURLConnection r7) throws java.io.IOException {
        /*
            r6 = 0
            r2 = 1
            com.google.android.gms.ads.internal.aw.e()
            java.lang.String r0 = r7.getContentType()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L9d
            java.lang.String r1 = ""
        L11:
            com.google.android.gms.ads.internal.aw.e()
            java.lang.String r0 = r7.getContentType()
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto Laf
            java.lang.String r3 = ";"
            java.lang.String[] r3 = r0.split(r3)
            int r0 = r3.length
            if (r0 == r2) goto Laf
            r0 = r2
        L28:
            int r4 = r3.length
            if (r0 >= r4) goto Laf
            r4 = r3[r0]
            java.lang.String r4 = r4.trim()
            java.lang.String r5 = "charset"
            boolean r4 = r4.startsWith(r5)
            if (r4 == 0) goto Lab
            r4 = r3[r0]
            java.lang.String r4 = r4.trim()
            java.lang.String r5 = "="
            java.lang.String[] r4 = r4.split(r5)
            int r5 = r4.length
            if (r5 <= r2) goto Lab
            r0 = r4[r2]
            java.lang.String r2 = r0.trim()
        L4e:
            java.util.Map r0 = r7.getHeaderFields()
            java.util.HashMap r5 = new java.util.HashMap
            int r3 = r0.size()
            r5.<init>(r3)
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r4 = r0.iterator()
        L63:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto Lb2
            java.lang.Object r0 = r4.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r3 = r0.getKey()
            if (r3 == 0) goto L63
            java.lang.Object r3 = r0.getValue()
            if (r3 == 0) goto L63
            java.lang.Object r3 = r0.getValue()
            java.util.List r3 = (java.util.List) r3
            int r3 = r3.size()
            if (r3 <= 0) goto L63
            java.lang.Object r3 = r0.getKey()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            java.lang.Object r0 = r0.get(r6)
            java.lang.String r0 = (java.lang.String) r0
            r5.put(r3, r0)
            goto L63
        L9d:
            java.lang.String r1 = ";"
            java.lang.String[] r0 = r0.split(r1)
            r0 = r0[r6]
            java.lang.String r1 = r0.trim()
            goto L11
        Lab:
            int r0 = r0 + 1
            goto L28
        Laf:
            java.lang.String r2 = ""
            goto L4e
        Lb2:
            com.google.android.gms.internal.ads.js r0 = com.google.android.gms.ads.internal.aw.g()
            int r3 = r7.getResponseCode()
            java.lang.String r4 = r7.getResponseMessage()
            java.io.InputStream r6 = r7.getInputStream()
            android.webkit.WebResourceResponse r0 = r0.a(r1, r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.a(java.net.HttpURLConnection):android.webkit.WebResourceResponse");
    }

    public static PopupWindow a(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String a() {
        return UUID.randomUUID().toString();
    }

    public static String a(Context context, View view, zzjn zzjnVar) {
        if (!((Boolean) aoo.f().a(aro.ak)).booleanValue()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", zzjnVar.e);
            jSONObject2.put("height", zzjnVar.f5804b);
            jSONObject.put("size", jSONObject2);
            jSONObject.put("activity", l(context));
            if (!zzjnVar.f5806d) {
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent != null) {
                        int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("type", parent.getClass().getName());
                        jSONObject3.put("index_of_child", iIndexOfChild);
                        jSONArray.put(jSONObject3);
                    }
                    view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("parents", jSONArray);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            jd.c("Fail to get view hierarchy json", e);
            return null;
        }
    }

    public static String a(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[RecyclerView.ItemAnimator.FLAG_MOVED];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (i == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, i);
        }
    }

    public static String a(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public static Map<String, String> a(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str : com.google.android.gms.ads.internal.aw.g().a(uri)) {
            map.put(str, uri.getQueryParameter(str));
        }
        return map;
    }

    private final JSONArray a(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            a(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final JSONObject a(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public static void a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @TargetApi(18)
    public static void a(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            if (((Boolean) aoo.f().a(aro.cL)).booleanValue()) {
                b(context, intent);
            }
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String string = uri.toString();
            jd.b(new StringBuilder(String.valueOf(string).length() + 26).append("Opening ").append(string).append(" in a new browser.").toString());
        } catch (ActivityNotFoundException e) {
            jd.b("No browser is found.", e);
        }
    }

    public static void a(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        a(context, str, arrayList);
    }

    public static void a(Context context, String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            new lm(context, str, it.next()).c();
        }
    }

    public static void a(Context context, Throwable th) {
        boolean zBooleanValue;
        if (context == null) {
            return;
        }
        try {
            zBooleanValue = ((Boolean) aoo.f().a(aro.f4401c)).booleanValue();
        } catch (IllegalStateException e) {
            zBooleanValue = false;
        }
        if (zBooleanValue) {
            com.google.android.gms.common.util.f.a(context, th);
        }
    }

    public static void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            jk.a(runnable);
        }
    }

    private final void a(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(a((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(a((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(a((Collection<?>) obj));
            return;
        }
        if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
            return;
        }
        JSONArray jSONArray2 = new JSONArray();
        for (Object obj2 : (Object[]) obj) {
            a(jSONArray2, obj2);
        }
        jSONArray.put(jSONArray2);
    }

    private final void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, a((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, a((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, a((Collection<?>) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private static boolean a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @TargetApi(24)
    public static boolean a(Activity activity, Configuration configuration) {
        aoo.a();
        int iA = ly.a(activity, configuration.screenHeightDp);
        int iA2 = ly.a(activity, configuration.screenWidthDp);
        DisplayMetrics displayMetricsA = a((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = displayMetricsA.heightPixels;
        int i2 = displayMetricsA.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int iIntValue = ((Integer) aoo.f().a(aro.cX)).intValue() * ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d));
        return a(i, dimensionPixelSize + iA, iIntValue) && a(i2, iA2, iIntValue);
    }

    public static boolean a(Context context) {
        boolean z;
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        try {
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) {
                jd.e("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
                return false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 16) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboard"));
                z = false;
            } else {
                z = true;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 32) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboardHidden"));
                z = false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 128) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "orientation"));
                z = false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 256) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenLayout"));
                z = false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 512) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "uiMode"));
                z = false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & 1024) == 0) {
                jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenSize"));
                z = false;
            }
            if ((resolveInfoResolveActivity.activityInfo.configChanges & RecyclerView.ItemAnimator.FLAG_MOVED) != 0) {
                return z;
            }
            jd.e(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "smallestScreenSize"));
            return false;
        } catch (Exception e) {
            jd.c("Could not verify that com.google.android.gms.ads.AdActivity is declared in AndroidManifest.xml", e);
            com.google.android.gms.ads.internal.aw.i().a(e, "AdUtil.hasAdActivity");
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        return com.google.android.gms.common.c.c.b(context).a(str, context.getPackageName()) == 0;
    }

    public static boolean a(ClassLoader classLoader, Class<?> cls, String str) {
        try {
            return cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable th) {
            return false;
        }
    }

    public static int[] a(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? e() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static int b(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String strValueOf = String.valueOf(e);
            jd.e(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Could not parse value:").append(strValueOf).toString());
            return 0;
        }
    }

    public static Bitmap b(View view) {
        if (view == null) {
            return null;
        }
        Bitmap bitmapF = f(view);
        return bitmapF == null ? e(view) : bitmapF;
    }

    public static String b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
    }

    @TargetApi(18)
    public static void b(Context context, Intent intent) {
        if (intent != null && com.google.android.gms.common.util.n.f()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static void b(Context context, String str, String str2) {
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
            fileOutputStreamOpenFileOutput.write(str2.getBytes(Constants.UTF8_NAME));
            fileOutputStreamOpenFileOutput.close();
        } catch (Exception e) {
            jd.b("Error writing to file in internal storage.", e);
        }
    }

    public static Bundle c() {
        Bundle bundle = new Bundle();
        try {
            if (((Boolean) aoo.f().a(aro.C)).booleanValue()) {
                Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                bundle.putParcelable("debug_memory_info", memoryInfo);
            }
            if (((Boolean) aoo.f().a(aro.D)).booleanValue()) {
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free_memory", runtime.freeMemory());
                bundle.putLong("runtime_max_memory", runtime.maxMemory());
                bundle.putLong("runtime_total_memory", runtime.totalMemory());
            }
            bundle.putInt("web_view_count", com.google.android.gms.ads.internal.aw.i().k());
        } catch (Exception e) {
            jd.c("Unable to gather memory stats", e);
        }
        return bundle;
    }

    public static WebResourceResponse c(Context context, String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.aw.e().b(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = new kw(context).a(str2, map).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", Constants.UTF8_NAME, new ByteArrayInputStream(str3.getBytes(Constants.UTF8_NAME)));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            jd.c("Could not fetch MRAID JS.", e);
        }
        return null;
    }

    public static String c(Context context, String str) {
        try {
            return new String(com.google.android.gms.common.util.l.a(context.openFileInput(str), true), Constants.UTF8_NAME);
        } catch (IOException e) {
            jd.b("Error reading from internal storage.");
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean c(android.view.View r4) {
        /*
            r2 = 0
            r1 = 0
            android.view.View r0 = r4.getRootView()
            if (r0 == 0) goto L16
            android.content.Context r0 = r0.getContext()
            boolean r3 = r0 instanceof android.app.Activity
            if (r3 == 0) goto L16
            android.app.Activity r0 = (android.app.Activity) r0
        L12:
            if (r0 != 0) goto L18
            r0 = r1
        L15:
            return r0
        L16:
            r0 = r2
            goto L12
        L18:
            android.view.Window r0 = r0.getWindow()
            if (r0 != 0) goto L2a
            r0 = r2
        L1f:
            if (r0 == 0) goto L2f
            int r0 = r0.flags
            r2 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r2
            if (r0 == 0) goto L2f
            r0 = 1
            goto L15
        L2a:
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            goto L1f
        L2f:
            r0 = r1
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.c(android.view.View):boolean");
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static int d(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    private static String d() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ").append(Build.VERSION.RELEASE);
        }
        sb.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/").append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    protected static String d(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return d();
        }
    }

    public static AlertDialog.Builder e(Context context) {
        return new AlertDialog.Builder(context);
    }

    private static Bitmap e(View view) {
        Bitmap bitmapCreateBitmap;
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                jd.e("Width or height of view is zero");
                bitmapCreateBitmap = null;
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
            }
            return bitmapCreateBitmap;
        } catch (RuntimeException e) {
            jd.b("Fail to capture the webview", e);
            return null;
        }
    }

    private static int[] e() {
        return new int[]{0, 0};
    }

    private static Bitmap f(View view) {
        Bitmap bitmapCreateBitmap;
        RuntimeException e;
        boolean zIsDrawingCacheEnabled;
        try {
            zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
        } catch (RuntimeException e2) {
            bitmapCreateBitmap = null;
            e = e2;
        }
        try {
            view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
        } catch (RuntimeException e3) {
            e = e3;
            jd.b("Fail to capture the web view", e);
        }
        return bitmapCreateBitmap;
    }

    public static aqz f(Context context) {
        return new aqz(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        if (r0.importance != 100) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
    
        if (r1.inKeyguardRestrictedInputMode() != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        r0 = (android.os.PowerManager) r6.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r0 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
    
        if (r0 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        r0 = r0.isScreenOn();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean g(android.content.Context r6) {
        /*
            r2 = 0
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r6.getSystemService(r0)     // Catch: java.lang.Throwable -> L59
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L59
            java.lang.String r1 = "keyguard"
            java.lang.Object r1 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L59
            android.app.KeyguardManager r1 = (android.app.KeyguardManager) r1     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L15
            if (r1 != 0) goto L17
        L15:
            r0 = r2
        L16:
            return r0
        L17:
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L59
            if (r0 != 0) goto L1f
            r0 = r2
            goto L16
        L1f:
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> L59
        L23:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L57
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L59
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L59
            int r4 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L59
            int r5 = r0.pid     // Catch: java.lang.Throwable -> L59
            if (r4 != r5) goto L23
            int r0 = r0.importance     // Catch: java.lang.Throwable -> L59
            r3 = 100
            if (r0 != r3) goto L57
            boolean r0 = r1.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L59
            if (r0 != 0) goto L57
            java.lang.String r0 = "power"
            java.lang.Object r0 = r6.getSystemService(r0)     // Catch: java.lang.Throwable -> L59
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> L59
            if (r0 != 0) goto L52
            r0 = r2
        L4e:
            if (r0 == 0) goto L57
            r0 = 1
            goto L16
        L52:
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> L59
            goto L4e
        L57:
            r0 = r2
            goto L16
        L59:
            r0 = move-exception
            r0 = r2
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.g(android.content.Context):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap h(android.content.Context r3) {
        /*
            r1 = 0
            boolean r0 = r3 instanceof android.app.Activity
            if (r0 != 0) goto L6
        L5:
            return r1
        L6:
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bS     // Catch: java.lang.RuntimeException -> L3d
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.RuntimeException -> L3d
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.RuntimeException -> L3d
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.RuntimeException -> L3d
            boolean r0 = r0.booleanValue()     // Catch: java.lang.RuntimeException -> L3d
            if (r0 == 0) goto L2e
            android.app.Activity r3 = (android.app.Activity) r3     // Catch: java.lang.RuntimeException -> L3d
            android.view.Window r0 = r3.getWindow()     // Catch: java.lang.RuntimeException -> L3d
            if (r0 == 0) goto L43
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.RuntimeException -> L3d
            android.view.View r0 = r0.getRootView()     // Catch: java.lang.RuntimeException -> L3d
            android.graphics.Bitmap r0 = f(r0)     // Catch: java.lang.RuntimeException -> L3d
        L2c:
            r1 = r0
            goto L5
        L2e:
            android.app.Activity r3 = (android.app.Activity) r3     // Catch: java.lang.RuntimeException -> L3d
            android.view.Window r0 = r3.getWindow()     // Catch: java.lang.RuntimeException -> L3d
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.RuntimeException -> L3d
            android.graphics.Bitmap r0 = e(r0)     // Catch: java.lang.RuntimeException -> L3d
            goto L2c
        L3d:
            r0 = move-exception
            java.lang.String r2 = "Fail to capture screen shot"
            com.google.android.gms.internal.ads.jd.b(r2, r0)
        L43:
            r0 = r1
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.h(android.content.Context):android.graphics.Bitmap");
    }

    public static int i(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    @TargetApi(16)
    public static boolean j(Context context) {
        KeyguardManager keyguardManagerM;
        return context != null && com.google.android.gms.common.util.n.d() && (keyguardManagerM = m(context)) != null && keyguardManagerM.isKeyguardLocked();
    }

    public static boolean k(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            jd.b("Error loading class.", th);
            com.google.android.gms.ads.internal.aw.i().a(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    private static String l(Context context) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return null;
            }
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                return runningTaskInfo.topActivity.getClassName();
            }
        } catch (Exception e) {
        }
        return null;
    }

    private static KeyguardManager m(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    public final JSONObject a(Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return a(bundle);
        } catch (JSONException e) {
            jd.b("Error converting Bundle to JSON", e);
            return null;
        }
    }

    public final JSONObject a(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(e.getMessage());
            throw new JSONException(strValueOf.length() != 0 ? "Could not convert map to JSON: ".concat(strValueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final void a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(b(context, str));
    }

    public final void a(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            com.google.android.gms.ads.internal.aw.e();
            bundle.putString("device", b());
            bundle.putString("eids", TextUtils.join(",", aro.a()));
        }
        aoo.a();
        ly.a(context, str, str2, bundle, z, new jp(this, context, str));
    }

    public final void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", b(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final void a(Context context, List<String> list) {
        if ((context instanceof Activity) && !TextUtils.isEmpty(afp.a((Activity) context))) {
            if (list == null) {
                jd.a("Cannot ping urls: empty list.");
            } else {
                if (!asm.a(context)) {
                    jd.a("Cannot ping url because custom tabs is not supported");
                    return;
                }
                asm asmVar = new asm();
                asmVar.a(new jn(this, list, asmVar, context));
                asmVar.b((Activity) context);
            }
        }
    }

    public final boolean a(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return a(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, m(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(android.view.View r5, android.os.PowerManager r6, android.app.KeyguardManager r7) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            com.google.android.gms.internal.ads.jm r0 = com.google.android.gms.ads.internal.aw.e()
            boolean r0 = r0.f5186c
            if (r0 != 0) goto L27
            if (r7 != 0) goto L6a
            r0 = r1
        Ld:
            if (r0 == 0) goto L27
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bo
            com.google.android.gms.internal.ads.arm r3 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L6f
            boolean r0 = c(r5)
            if (r0 == 0) goto L6f
        L27:
            r0 = r2
        L28:
            int r3 = r5.getVisibility()
            if (r3 != 0) goto L73
            boolean r3 = r5.isShown()
            if (r3 == 0) goto L73
            if (r6 == 0) goto L3c
            boolean r3 = r6.isScreenOn()
            if (r3 == 0) goto L71
        L3c:
            r3 = r2
        L3d:
            if (r3 == 0) goto L73
            if (r0 == 0) goto L73
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bm
            com.google.android.gms.internal.ads.arm r3 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L69
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            boolean r0 = r5.getLocalVisibleRect(r0)
            if (r0 != 0) goto L69
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            boolean r0 = r5.getGlobalVisibleRect(r0)
            if (r0 == 0) goto L73
        L69:
            return r2
        L6a:
            boolean r0 = r7.inKeyguardRestrictedInputMode()
            goto Ld
        L6f:
            r0 = r1
            goto L28
        L71:
            r3 = r1
            goto L3d
        L73:
            r2 = r1
            goto L69
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.a(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    public final String b(Context context, String str) {
        String strD;
        synchronized (this.f5185b) {
            if (this.f5187d != null) {
                strD = this.f5187d;
            } else if (str == null) {
                strD = d();
            } else {
                try {
                    this.f5187d = com.google.android.gms.ads.internal.aw.g().a(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.f5187d)) {
                    aoo.a();
                    if (ly.b()) {
                        this.f5187d = d(context);
                    } else {
                        this.f5187d = null;
                        f5184a.post(new jo(this, context));
                        while (this.f5187d == null) {
                            try {
                                this.f5185b.wait();
                            } catch (InterruptedException e2) {
                                this.f5187d = d();
                                String strValueOf = String.valueOf(this.f5187d);
                                jd.e(strValueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(strValueOf) : new String("Interrupted, use default user agent: "));
                            }
                        }
                    }
                }
                String strValueOf2 = String.valueOf(this.f5187d);
                this.f5187d = new StringBuilder(String.valueOf(strValueOf2).length() + 10 + String.valueOf(str).length()).append(strValueOf2).append(" (Mobile; ").append(str).toString();
                try {
                    if (com.google.android.gms.common.c.c.b(context).a()) {
                        this.f5187d = String.valueOf(this.f5187d).concat(";aia");
                    }
                } catch (Exception e3) {
                    com.google.android.gms.ads.internal.aw.i().a(e3, "AdUtil.getUserAgent");
                }
                this.f5187d = String.valueOf(this.f5187d).concat(")");
                strD = this.f5187d;
            }
        }
        return strD;
    }

    public final void b(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (((Boolean) aoo.f().a(aro.br)).booleanValue()) {
            a(context, str, str2, bundle, z);
        }
    }

    public final boolean b(Context context) {
        if (this.e) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new jr(this, null), intentFilter);
        this.e = true;
        return true;
    }

    public final int[] b(Activity activity) {
        int[] iArrA = a(activity);
        aoo.a();
        aoo.a();
        return new int[]{ly.b(activity, iArrA[0]), ly.b(activity, iArrA[1])};
    }

    public final boolean c(Context context) {
        if (this.f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new jq(this, null), intentFilter);
        this.f = true;
        return true;
    }

    public final int[] c(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrE = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? e() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        aoo.a();
        aoo.a();
        return new int[]{ly.b(activity, iArrE[0]), ly.b(activity, iArrE[1])};
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:7:0x000a, B:9:0x000e, B:12:0x0038, B:13:0x0042, B:11:0x0026), top: B:20:0x000a, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(java.lang.String r4) {
        /*
            r3 = this;
            r1 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 == 0) goto L9
            r0 = r1
        L8:
            return r0
        L9:
            monitor-enter(r3)     // Catch: java.util.regex.PatternSyntaxException -> L47
            java.util.regex.Pattern r0 = r3.g     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L26
            com.google.android.gms.internal.ads.are<java.lang.String> r0 = com.google.android.gms.internal.ads.aro.aq     // Catch: java.lang.Throwable -> L44
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.Throwable -> L44
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.Throwable -> L44
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L44
            java.util.regex.Pattern r2 = r3.g     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = r2.pattern()     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L38
        L26:
            com.google.android.gms.internal.ads.are<java.lang.String> r0 = com.google.android.gms.internal.ads.aro.aq     // Catch: java.lang.Throwable -> L44
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.Throwable -> L44
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.Throwable -> L44
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L44
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.lang.Throwable -> L44
            r3.g = r0     // Catch: java.lang.Throwable -> L44
        L38:
            java.util.regex.Pattern r0 = r3.g     // Catch: java.lang.Throwable -> L44
            java.util.regex.Matcher r0 = r0.matcher(r4)     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.matches()     // Catch: java.lang.Throwable -> L44
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L44
            goto L8
        L44:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L44
            throw r0     // Catch: java.util.regex.PatternSyntaxException -> L47
        L47:
            r0 = move-exception
            r0 = r1
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.d(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:7:0x000a, B:9:0x000e, B:12:0x0038, B:13:0x0042, B:11:0x0026), top: B:20:0x000a, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean e(java.lang.String r4) {
        /*
            r3 = this;
            r1 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 == 0) goto L9
            r0 = r1
        L8:
            return r0
        L9:
            monitor-enter(r3)     // Catch: java.util.regex.PatternSyntaxException -> L47
            java.util.regex.Pattern r0 = r3.h     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L26
            com.google.android.gms.internal.ads.are<java.lang.String> r0 = com.google.android.gms.internal.ads.aro.ar     // Catch: java.lang.Throwable -> L44
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.Throwable -> L44
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.Throwable -> L44
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L44
            java.util.regex.Pattern r2 = r3.h     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = r2.pattern()     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L38
        L26:
            com.google.android.gms.internal.ads.are<java.lang.String> r0 = com.google.android.gms.internal.ads.aro.ar     // Catch: java.lang.Throwable -> L44
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.Throwable -> L44
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.Throwable -> L44
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L44
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.lang.Throwable -> L44
            r3.h = r0     // Catch: java.lang.Throwable -> L44
        L38:
            java.util.regex.Pattern r0 = r3.h     // Catch: java.lang.Throwable -> L44
            java.util.regex.Matcher r0 = r0.matcher(r4)     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.matches()     // Catch: java.lang.Throwable -> L44
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L44
            goto L8
        L44:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L44
            throw r0     // Catch: java.util.regex.PatternSyntaxException -> L47
        L47:
            r0 = move-exception
            r0 = r1
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jm.e(java.lang.String):boolean");
    }
}
