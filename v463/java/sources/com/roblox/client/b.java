package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.roblox.client.m.a;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.model.ClientLocalFlags;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f5732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f5733c;
    private static long f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final com.roblox.client.m.e f5734d = com.roblox.client.m.c.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static c f5735e = c.SETTINGS_CHECK_STATE_NONE;
    private static int g = 0;

    /* JADX INFO: renamed from: com.roblox.client.b$b, reason: collision with other inner class name */
    public interface InterfaceC0127b {
        void a(boolean z, com.roblox.client.http.j jVar);
    }

    private enum c {
        SETTINGS_CHECK_STATE_NONE,
        SETTINGS_CHECK_STATE_IN_PROGRESS,
        SETTINGS_CHECK_STATE_DONE_CHANGED
    }

    public static com.roblox.client.m.a a(String str) {
        return f5734d.a(str);
    }

    public static boolean a() {
        return f5731a;
    }

    static boolean b() {
        return f5735e == c.SETTINGS_CHECK_STATE_DONE_CHANGED;
    }

    public static void a(Context context, InterfaceC0127b interfaceC0127b) {
        String strZ = u.Z();
        com.roblox.client.ae.k.b("AndroidAppSettings", "fetchFromServer: URL = " + strZ + ".");
        a aVar = new a(context, strZ, interfaceC0127b);
        aVar.a(new com.roblox.client.http.a.b());
        aVar.c();
    }

    private static void a(final InterfaceC0127b interfaceC0127b) {
        String strZ = u.Z();
        com.roblox.client.ae.k.b("AndroidAppSettings", "getFromServer: URL = " + strZ + ".");
        new com.roblox.client.http.c(strZ, new com.roblox.client.http.l() { // from class: com.roblox.client.b.1
            @Override // com.roblox.client.http.l
            public void b(com.roblox.client.http.j jVar) {
            }

            @Override // com.roblox.client.http.l
            public void a(com.roblox.client.http.j jVar) {
                interfaceC0127b.a((jVar == null || jVar.b() != 200 || jVar.a().isEmpty()) ? false : true, jVar);
            }
        }).c();
    }

    public static String c() {
        if (TextUtils.isEmpty(f5732b)) {
            return null;
        }
        long j = f5733c;
        if (j <= 0 || j + cI() < SystemClock.elapsedRealtime()) {
            return null;
        }
        return f5732b;
    }

    static void a(final Context context) {
        if (cH() == 0 || f5735e != c.SETTINGS_CHECK_STATE_NONE) {
            return;
        }
        long j = f;
        if (j == 0 || j < SystemClock.elapsedRealtime()) {
            f5735e = c.SETTINGS_CHECK_STATE_IN_PROGRESS;
            a(new InterfaceC0127b() { // from class: com.roblox.client.b.2
                @Override // com.roblox.client.b.InterfaceC0127b
                public void a(boolean z, com.roblox.client.http.j jVar) {
                    if (z) {
                        String strA = jVar.a();
                        com.roblox.client.ae.k.c("AndroidAppSettings", "checkServerForSettingsChange: Retrieved settings. Length = " + strA.length());
                        if (b.c(context, strA)) {
                            com.roblox.client.ae.k.b("AndroidAppSettings", "checkServerForSettingsChange: Inform the App that it needs to restart...");
                            c unused = b.f5735e = c.SETTINGS_CHECK_STATE_DONE_CHANGED;
                            return;
                        }
                    } else {
                        com.roblox.client.ae.k.d("AndroidAppSettings", "checkServerForSettingsChange: Failed to get settings.");
                    }
                    c unused2 = b.f5735e = c.SETTINGS_CHECK_STATE_NONE;
                    long unused3 = b.f = SystemClock.elapsedRealtime() + b.cH();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Context context, String str) {
        return !TextUtils.equals(u.a(context) != null ? r2.getString("AndroidAppSettingsCache", "{}") : "{}", str);
    }

    public static void b(Context context) {
        d(context);
        e(context);
    }

    private static class a extends com.roblox.client.http.c {
        private Context h;
        private InterfaceC0127b i;
        private boolean j;

        public a(Context context, String str, InterfaceC0127b interfaceC0127b) {
            super(str);
            this.j = false;
            this.h = context;
            this.i = interfaceC0127b;
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
                    if (!jSONObject.has("applicationSettings")) {
                        String unused = b.f5732b = null;
                        long unused2 = b.f5733c = 0L;
                    } else {
                        com.roblox.client.ae.k.b("AndroidAppSettings", "Got the JSON settings from new endpoint.");
                        jSONObject = jSONObject.optJSONObject("applicationSettings");
                        String string = jSONObject.toString();
                        String unused3 = b.f5732b = strA;
                        long unused4 = b.f5733c = SystemClock.elapsedRealtime();
                        strA = string;
                    }
                    b.d(this.h, strA);
                    b.a(jSONObject, false);
                    b.e(this.h);
                    this.j = true;
                    long unused5 = b.f = SystemClock.elapsedRealtime() + b.cH();
                } catch (Exception e2) {
                    com.roblox.client.ae.k.d("AndroidAppSettings", "Failed to parse settings! Exception: " + e2);
                    b.cE();
                    b.e(this.h);
                    new com.roblox.client.o.a("Android-FlagsLoading-Error").b("ErrorCode", "Failed to parse flags json").b("ErrorMsg", e2.getMessage() + " JSON: " + jVarA.a()).b();
                }
            } else {
                com.roblox.client.ae.k.d("AndroidAppSettings", "Failed to retrieve settings!");
                b.cE();
                b.e(this.h);
                new com.roblox.client.o.a("Android-FlagsLoading-Error").b("ErrorCode", jVarA != null ? Integer.valueOf(jVarA.b()) : "Null response").b("ErrorMsg", jVarA != null ? jVarA.a() : "Null response").b();
            }
            boolean unused6 = b.f5731a = true;
            if (com.roblox.platform.http.h.b() instanceof com.roblox.client.http.s) {
                ((com.roblox.client.http.s) com.roblox.platform.http.h.b()).a();
            }
            return jVarA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.roblox.client.http.a, android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(com.roblox.client.http.j jVar) {
            super.onPostExecute(jVar);
            InterfaceC0127b interfaceC0127b = this.i;
            if (interfaceC0127b != null) {
                interfaceC0127b.a(this.j, jVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cE() {
        d(null);
    }

    private static void d(Context context) {
        a(f(context), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context) {
        JSONObject jSONObjectA = com.roblox.client.i.a.a(context);
        if (jSONObjectA != null && jSONObjectA.length() > 0) {
            a(jSONObjectA, true);
        }
        ClientLocalFlags localFlags = NativeGLInterface.readLocalFlags();
        if (!localFlags.isEmpty()) {
            com.roblox.client.ae.k.c("AndroidAppSettings", "localFlags size:" + localFlags.size());
            a(localFlags.getAll(), 3);
        }
        if (com.roblox.client.i.b.a() && com.roblox.client.i.c.a()) {
            a(com.roblox.client.i.c.b(), 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str) {
        u.a(context).edit().putString("AndroidAppSettingsCache", str).apply();
    }

    private static JSONObject f(Context context) {
        SharedPreferences sharedPreferencesA = context != null ? u.a(context) : u.g();
        try {
            return new JSONObject(sharedPreferencesA != null ? sharedPreferencesA.getString("AndroidAppSettingsCache", "{}") : "{}");
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public static void a(JSONObject jSONObject, boolean z) {
        a(jSONObject, z ? 2 : 1);
    }

    private static void a(JSONObject jSONObject, int i) {
        Object string;
        Iterator<Map.Entry<String, com.roblox.client.m.a>> it = f5734d.a().iterator();
        if (!it.hasNext()) {
            return;
        }
        while (true) {
            Map.Entry<String, com.roblox.client.m.a> next = it.next();
            if (!it.hasNext()) {
                return;
            }
            String key = next.getKey();
            com.roblox.client.m.a value = next.getValue();
            if (jSONObject.has(key)) {
                try {
                    if (value instanceof a.C0161a) {
                        string = Boolean.valueOf(jSONObject.getBoolean(key));
                    } else if (value instanceof a.d) {
                        string = Long.valueOf(jSONObject.getLong(key));
                    } else if (value instanceof a.c) {
                        string = Integer.valueOf(jSONObject.getInt(key));
                    } else if (value instanceof a.b) {
                        string = Double.valueOf(jSONObject.getDouble(key));
                    } else {
                        string = jSONObject.getString(key);
                    }
                    value.a(string, i);
                } catch (JSONException unused) {
                    value.a(i);
                    com.roblox.client.ae.k.d("AndroidAppSettings", "Error reading value for setting: " + key);
                }
            } else {
                value.a(i);
            }
        }
    }

    public static void d() {
        cF();
    }

    public static int b(String str) {
        String str2 = "_Bucket_" + str;
        SharedPreferences sharedPreferencesG = u.g();
        if (!sharedPreferencesG.contains(str2)) {
            int iRandom = (int) (Math.random() * 100.0d);
            sharedPreferencesG.edit().putInt(str2, iRandom).apply();
            return iRandom;
        }
        return sharedPreferencesG.getInt(str2, 0);
    }

    private static void cF() {
        g = new Random().nextInt(100);
    }

    public static int e() {
        long jB = com.roblox.client.s.h.a().b();
        if (jB > -1) {
            return (int) (jB % 100);
        }
        return 100;
    }

    private static int cG() {
        long jB = j.a().b();
        if (jB != -1) {
            return (int) (jB % 100);
        }
        return 99;
    }

    public static boolean f() {
        return g < s();
    }

    public static boolean g() {
        return f5734d.bs().contains(String.valueOf(com.roblox.client.s.h.a().b())) || e() < bo();
    }

    public static long h() {
        return f5734d.bh();
    }

    public static String i() {
        return f5734d.aT();
    }

    public static boolean j() {
        return cG() < f5734d.aU();
    }

    public static Boolean k() {
        return Boolean.valueOf(((int) (Math.random() * 100.0d)) < f5734d.aV());
    }

    public static String l() {
        return f5734d.aW();
    }

    public static String m() {
        return f5734d.aX();
    }

    public static boolean n() {
        return cG() < f5734d.aB();
    }

    public static boolean o() {
        return f5734d.b();
    }

    public static long p() {
        return f5734d.v();
    }

    public static String q() {
        return f5734d.w();
    }

    public static boolean r() {
        return f5734d.c();
    }

    public static int s() {
        return f5734d.d();
    }

    public static String t() {
        return f5734d.e();
    }

    public static int u() {
        return f5734d.f();
    }

    public static int v() {
        return f5734d.g();
    }

    public static String w() {
        return f5734d.h();
    }

    public static boolean x() {
        return f5734d.k();
    }

    public static boolean y() {
        return f5734d.l();
    }

    public static String z() {
        return f5734d.i();
    }

    public static String A() {
        return f5734d.j();
    }

    public static String B() {
        return f5734d.m();
    }

    public static boolean C() {
        return f5734d.n();
    }

    public static String D() {
        return f5734d.o();
    }

    static boolean E() {
        return ((int) (Math.random() * 100.0d)) < f5734d.p();
    }

    public static boolean F() {
        return f5734d.q();
    }

    public static boolean G() {
        return f5734d.af();
    }

    public static String H() {
        return f5734d.r();
    }

    public static String I() {
        return f5734d.s();
    }

    public static int J() {
        return f5734d.t();
    }

    public static boolean K() {
        return f5734d.u();
    }

    public static int L() {
        return f5734d.y();
    }

    public static int M() {
        return f5734d.z();
    }

    public static int N() {
        return f5734d.A();
    }

    public static int O() {
        return f5734d.B();
    }

    public static int P() {
        return f5734d.C();
    }

    public static int Q() {
        return f5734d.D();
    }

    public static int R() {
        return f5734d.E();
    }

    public static boolean S() {
        return f5734d.x();
    }

    public static String T() {
        return f5734d.F();
    }

    public static boolean U() {
        return f5734d.G();
    }

    public static boolean V() {
        return f5734d.H();
    }

    public static long W() {
        return f5734d.I();
    }

    public static boolean X() {
        return f5734d.J();
    }

    public static boolean Y() {
        return f5734d.K();
    }

    public static boolean Z() {
        return f5734d.L();
    }

    public static boolean aa() {
        return f5734d.M();
    }

    public static boolean ab() {
        return f5734d.N();
    }

    public static long ac() {
        return f5734d.O();
    }

    public static boolean ad() {
        return f5734d.bg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long cH() {
        return ((long) f5734d.P()) * 1000;
    }

    public static int ae() {
        return f5734d.Q();
    }

    public static int af() {
        return f5734d.R();
    }

    public static boolean ag() {
        return f5734d.S();
    }

    public static boolean ah() {
        return f5734d.T();
    }

    public static boolean ai() {
        return f5734d.V();
    }

    public static boolean aj() {
        return f5734d.U();
    }

    public static boolean ak() {
        return f5734d.W();
    }

    public static boolean al() {
        return f5734d.X();
    }

    public static boolean am() {
        return f5734d.Y();
    }

    public static boolean an() {
        return f5734d.Z();
    }

    public static boolean ao() {
        return f5734d.aa();
    }

    public static boolean ap() {
        return f5734d.ab();
    }

    public static boolean aq() {
        return f5734d.ac();
    }

    public static boolean ar() {
        return f5734d.ad();
    }

    public static boolean as() {
        return f5734d.ae();
    }

    public static boolean at() {
        return f5734d.ag();
    }

    public static boolean au() {
        return f5734d.ah();
    }

    public static boolean av() {
        return f5734d.ai();
    }

    public static int aw() {
        return f5734d.aj();
    }

    public static String ax() {
        return f5734d.ak();
    }

    public static String ay() {
        return f5734d.al();
    }

    public static String az() {
        return f5734d.am();
    }

    public static boolean aA() {
        return f5734d.bw();
    }

    public static String aB() {
        return f5734d.an();
    }

    public static int aC() {
        return f5734d.ao();
    }

    public static String aD() {
        return f5734d.ap();
    }

    public static String aE() {
        return f5734d.aq();
    }

    public static boolean aF() {
        return f5734d.ar();
    }

    public static boolean aG() {
        return f5734d.as();
    }

    public static boolean aH() {
        return f5734d.at();
    }

    public static int aI() {
        return f5734d.au();
    }

    public static boolean aJ() {
        return f5734d.av();
    }

    public static String aK() {
        return f5734d.aw();
    }

    public static boolean aL() {
        return f5734d.ax();
    }

    public static boolean aM() {
        return f5734d.ay();
    }

    public static boolean aN() {
        return f5734d.aA();
    }

    public static boolean aO() {
        return f5734d.az();
    }

    public static boolean aP() {
        return f5734d.aC();
    }

    public static boolean aQ() {
        return f5734d.aD();
    }

    public static String aR() {
        return f5734d.aE();
    }

    public static String aS() {
        return f5734d.aF();
    }

    public static String aT() {
        return f5734d.aG();
    }

    public static String aU() {
        return f5734d.aH();
    }

    public static int aV() {
        return f5734d.aI();
    }

    public static int aW() {
        return f5734d.aJ();
    }

    public static int aX() {
        return f5734d.aL();
    }

    public static int aY() {
        return f5734d.aK();
    }

    public static String aZ() {
        return f5734d.aO();
    }

    public static String ba() {
        return f5734d.aP();
    }

    public static String bb() {
        return f5734d.aQ();
    }

    public static String bc() {
        return f5734d.aR();
    }

    public static String bd() {
        return f5734d.aS();
    }

    public static boolean be() {
        return f5734d.bc();
    }

    public static boolean bf() {
        return f5734d.bd();
    }

    public static boolean bg() {
        return f5734d.be();
    }

    public static boolean bh() {
        return f5734d.bf();
    }

    public static int bi() {
        return f5734d.bi();
    }

    public static int bj() {
        return f5734d.bk();
    }

    public static int bk() {
        return f5734d.bl();
    }

    public static int bl() {
        return f5734d.bm();
    }

    public static int bm() {
        return f5734d.bn();
    }

    public static String bn() {
        return f5734d.bj();
    }

    public static int bo() {
        return f5734d.bo();
    }

    public static int bp() {
        return f5734d.bp();
    }

    public static int bq() {
        return f5734d.bq();
    }

    public static boolean br() {
        return f5734d.br();
    }

    public static boolean bs() {
        return f5734d.bt();
    }

    public static String bt() {
        return f5734d.bu();
    }

    public static boolean bu() {
        return f5734d.bv();
    }

    public static boolean bv() {
        return f5734d.bI();
    }

    public static boolean bw() {
        return f5734d.bK();
    }

    public static boolean bx() {
        return f5734d.bM();
    }

    public static boolean by() {
        return f5734d.bx();
    }

    public static boolean bz() {
        return f5734d.by();
    }

    public static boolean bA() {
        return f5734d.bz();
    }

    public static String bB() {
        return f5734d.bB();
    }

    public static int bC() {
        return f5734d.bD();
    }

    public static String bD() {
        return f5734d.bE();
    }

    public static boolean bE() {
        return f5734d.bA();
    }

    public static boolean bF() {
        return f5734d.bC();
    }

    public static boolean bG() {
        return f5734d.bF();
    }

    public static boolean bH() {
        return f5734d.bG();
    }

    public static int bI() {
        return f5734d.bH();
    }

    public static String bJ() {
        return f5734d.bJ();
    }

    public static boolean bK() {
        return f5734d.bL();
    }

    public static int bL() {
        return f5734d.bN();
    }

    public static boolean bM() {
        return f5734d.bO();
    }

    public static boolean bN() {
        return f5734d.bP();
    }

    public static boolean bO() {
        return Build.VERSION.SDK_INT >= 21;
    }

    private static long cI() {
        return ((long) f5734d.bQ()) * 1000;
    }

    public static boolean bP() {
        return f5734d.bR();
    }

    public static boolean bQ() {
        return f5734d.bS();
    }

    public static boolean bR() {
        return f5734d.bT();
    }

    public static boolean bS() {
        return f5734d.bU();
    }

    public static boolean bT() {
        return f5734d.bV();
    }

    public static boolean bU() {
        return f5734d.bW();
    }

    public static boolean bV() {
        return f5734d.bX();
    }

    public static boolean bW() {
        return f5734d.bY();
    }

    public static boolean bX() {
        return f5734d.bZ();
    }

    public static boolean bY() {
        return f5734d.ca();
    }

    public static boolean bZ() {
        return f5734d.cb();
    }

    public static boolean ca() {
        return f5734d.cc();
    }

    public static boolean cb() {
        return f5734d.cd();
    }

    public static boolean cc() {
        return com.roblox.client.ae.l.b() || f5734d.ce();
    }

    public static boolean cd() {
        return f5734d.cf();
    }

    public static boolean ce() {
        return f5734d.cg();
    }

    public static boolean cf() {
        return f5734d.ch();
    }

    public static boolean cg() {
        return f5734d.ci();
    }

    public static boolean ch() {
        return f5734d.cj();
    }

    public static boolean ci() {
        return f5734d.ck();
    }

    public static boolean cj() {
        return f5734d.cl();
    }

    public static boolean ck() {
        return f5734d.co();
    }

    public static boolean cl() {
        return f5734d.cm();
    }

    public static boolean cm() {
        return f5734d.cn();
    }

    public static boolean cn() {
        return f5734d.cp();
    }

    public static boolean co() {
        return f5734d.cq();
    }

    public static boolean cp() {
        return f5734d.cr();
    }

    public static boolean cq() {
        return f5734d.cs();
    }

    public static boolean cr() {
        return f5734d.ct();
    }

    public static boolean cs() {
        return f5734d.cu();
    }

    public static boolean ct() {
        return f5734d.cv();
    }

    public static boolean cu() {
        return f5734d.cw();
    }

    public static boolean cv() {
        return b("UniversalStartupRollout") < f5734d.cx();
    }

    public static boolean cw() {
        return f5734d.cy();
    }

    public static boolean cx() {
        return com.roblox.client.ae.l.b() && f5734d.cB();
    }

    public static boolean cy() {
        return f5734d.cz();
    }

    public static boolean cz() {
        return com.roblox.client.ae.l.b() && f5734d.cC();
    }

    public static boolean cA() {
        return f5734d.cD();
    }

    public static boolean cB() {
        return f5734d.cJ();
    }
}
