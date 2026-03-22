package com.roblox.abtesting;

import com.roblox.abtesting.models.ABTest;
import com.roblox.abtesting.models.AddEmailToSignupForNewUsers;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.ae.s;
import com.roblox.client.ae.v;
import com.roblox.client.analytics.d;
import com.roblox.client.http.j;
import com.roblox.client.s.c;
import com.roblox.client.s.f;
import com.roblox.client.u;
import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    private static a o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a f5536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.http.f f5537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s f5538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v.a f5539e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConcurrentHashMap<String, ABTest> f5535a = new ConcurrentHashMap<>();
    private final InterfaceC0117a f = new InterfaceC0117a() { // from class: com.roblox.abtesting.a.1
        @Override // com.roblox.abtesting.a.InterfaceC0117a
        public void a() {
        }
    };
    private long i = -1;
    private long j = -1;
    private String g = u.E();
    private String h = u.F();
    private final HashSet<String> l = new HashSet<>();
    private final HashSet<String> n = new HashSet<>();
    private final HashSet<String> m = new HashSet<>();
    private final HashSet<String> k = new HashSet<>();

    /* JADX INFO: renamed from: com.roblox.abtesting.a$a, reason: collision with other inner class name */
    public interface InterfaceC0117a {
        void a();
    }

    public a(v.a aVar) {
        this.f5539e = aVar;
    }

    public static synchronized a a() {
        if (o == null) {
            if (l.b()) {
                o = new b(new v.b());
            } else {
                o = new a(new v.b());
            }
        }
        return o;
    }

    public boolean b() {
        return a(AddEmailToSignupForNewUsers.TEST_NAME, 2);
    }

    public boolean c() {
        return a(com.roblox.client.b.aB(), 2);
    }

    public boolean d() {
        return a(com.roblox.client.b.aR(), 2);
    }

    public boolean e() {
        return a(com.roblox.client.b.aS(), 2) || a(com.roblox.client.b.aS(), 4);
    }

    public boolean f() {
        return a(com.roblox.client.b.aT(), 2) || a(com.roblox.client.b.aT(), 4);
    }

    public boolean g() {
        return a(com.roblox.client.b.aS(), 3) || a(com.roblox.client.b.aS(), 4);
    }

    public boolean h() {
        return a(com.roblox.client.b.aT(), 3) || a(com.roblox.client.b.aT(), 4);
    }

    public boolean i() {
        return a(com.roblox.client.b.ba(), 2);
    }

    public boolean j() {
        return a(com.roblox.client.b.aZ(), 2);
    }

    public boolean k() {
        return a(com.roblox.client.b.bb(), 3);
    }

    public boolean l() {
        return a(com.roblox.client.b.bc(), 3);
    }

    public boolean m() {
        return a(com.roblox.client.b.bJ(), 2);
    }

    public boolean n() {
        return a(com.roblox.client.b.bJ(), 3);
    }

    public boolean o() {
        return a(com.roblox.client.b.bd(), 2);
    }

    public boolean p() {
        return a(com.roblox.client.b.aU(), 2);
    }

    public void a(s sVar) {
        this.f5538d = sVar;
    }

    public void a(f.a aVar) {
        this.f5536b = aVar;
    }

    public f q() {
        return this.f5536b.a();
    }

    public void a(com.roblox.client.http.f fVar) {
        this.f5537c = fVar;
    }

    public void a(long j) {
        k.c("ABTestManager", "btid: " + j);
        this.i = j;
    }

    public void b(long j) {
        this.j = j;
    }

    public void r() {
        this.l.add(com.roblox.client.b.ba());
        this.n.add(com.roblox.client.b.aB());
        this.n.add(com.roblox.client.b.bd());
        this.k.add(com.roblox.client.b.aZ());
        this.k.add(com.roblox.client.b.bb());
        this.k.add(com.roblox.client.b.bc());
        this.k.add(com.roblox.client.b.aU());
        this.k.add(com.roblox.client.b.bJ());
        if (com.roblox.client.b.bv()) {
            this.k.add(com.roblox.client.b.aS());
            this.k.add(com.roblox.client.b.aT());
            this.k.add(com.roblox.client.b.aR());
        } else {
            this.l.add(com.roblox.client.b.aS());
            this.l.add(com.roblox.client.b.aT());
            this.l.add(com.roblox.client.b.aR());
        }
    }

    public void a(InterfaceC0117a interfaceC0117a) {
        a(this.n, ABTest.SubjectTypes.USER_ID, interfaceC0117a);
    }

    public void b(InterfaceC0117a interfaceC0117a) {
        b(this.n, ABTest.SubjectTypes.USER_ID, interfaceC0117a);
    }

    public void c(InterfaceC0117a interfaceC0117a) {
        a(this.l, ABTest.SubjectTypes.USER_ID, interfaceC0117a);
    }

    public void d(final InterfaceC0117a interfaceC0117a) {
        InterfaceC0117a interfaceC0117a2 = new InterfaceC0117a() { // from class: com.roblox.abtesting.a.2
            @Override // com.roblox.abtesting.a.InterfaceC0117a
            public void a() {
                a.this.e(interfaceC0117a);
            }
        };
        if (c.d().f()) {
            a(this.m, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0117a2);
        } else {
            b(this.m, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0117a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(InterfaceC0117a interfaceC0117a) {
        a(this.k, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0117a);
    }

    public void a(Set<String> set, ABTest.SubjectTypes subjectTypes, InterfaceC0117a interfaceC0117a) {
        if (interfaceC0117a == null) {
            interfaceC0117a = this.f;
        }
        if (this.f5537c == null || set.size() == 0) {
            interfaceC0117a.a();
            return;
        }
        if ((subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID && this.i == -1) || (subjectTypes == ABTest.SubjectTypes.USER_ID && this.j == -1)) {
            throw new IllegalStateException(subjectTypes + " was not set before enrolling ab tests.");
        }
        a(set, subjectTypes);
        JSONArray jSONArrayA = a(set);
        k.b("ABTestManager", "Enrolling.");
        a(jSONArrayA, this.g, interfaceC0117a);
    }

    public void b(Set<String> set, ABTest.SubjectTypes subjectTypes, InterfaceC0117a interfaceC0117a) {
        if (interfaceC0117a == null) {
            interfaceC0117a = this.f;
        }
        if (this.f5537c == null || set.size() == 0) {
            interfaceC0117a.a();
            return;
        }
        if ((subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID && this.i == -1) || (subjectTypes == ABTest.SubjectTypes.USER_ID && this.j == -1)) {
            throw new IllegalStateException(subjectTypes + " was not set before getting enrollments for ab tests.");
        }
        a(set, subjectTypes);
        JSONArray jSONArrayA = a(set);
        k.b("ABTestManager", "Getting enrollments.");
        a(jSONArrayA, this.h, interfaceC0117a);
    }

    private void a(JSONArray jSONArray, String str, final InterfaceC0117a interfaceC0117a) {
        com.roblox.client.http.l lVar = new com.roblox.client.http.l() { // from class: com.roblox.abtesting.a.3
            @Override // com.roblox.client.http.l
            public void b(j jVar) {
            }

            @Override // com.roblox.client.http.l
            public void a(j jVar) {
                k.c("ABTestManager", "getTestsFromNetwork. Response:" + jVar.b() + ". ResponseBody: " + jVar.a());
                if (jVar.b() == 200) {
                    a.this.b(jVar.a());
                } else if (a.this.q() != null) {
                    a.this.q().a("Android-Fetch-ABTests-Failed");
                }
                InterfaceC0117a interfaceC0117a2 = interfaceC0117a;
                if (interfaceC0117a2 != null) {
                    interfaceC0117a2.a();
                }
            }
        };
        k.b("ABTestManager", "getTestsFromNetwork.");
        k.c("ABTestManager", "postBody: " + jSONArray.toString());
        this.f5537c.a(str, jSONArray.toString(), null, lVar, u.s()).c();
    }

    private JSONArray a(Set<String> set) {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            ABTest aBTest = this.f5535a.get(it.next());
            if (aBTest != null) {
                jSONArray.put(aBTest.toJsonV1());
            }
        }
        return jSONArray;
    }

    boolean a(String str) {
        ABTest aBTest = this.f5535a.get(str);
        if (aBTest == null) {
            return false;
        }
        return ABTest.ENROLLMENT_STATUS_LOCKED_ON.equalsIgnoreCase(aBTest.getStatus()) || ABTest.ENROLLMENT_STATUS_ENROLLED.equalsIgnoreCase(aBTest.getStatus());
    }

    boolean a(String str, int i) {
        ABTest aBTest = this.f5535a.get(str);
        if (aBTest == null) {
            return false;
        }
        Integer variation = aBTest.getVariation();
        return a(str) && variation != null && variation.intValue() == i;
    }

    void a(ABTest aBTest) throws InvalidParameterException {
        if (aBTest == null) {
            throw new InvalidParameterException("The test to add cannot be null.");
        }
        String testName = aBTest.getTestName();
        if (testName == null || testName.trim().isEmpty()) {
            throw new InvalidParameterException("The test name is either empty or null.");
        }
        this.f5535a.put(testName, aBTest);
    }

    private void a(Set<String> set, ABTest.SubjectTypes subjectTypes) {
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            ABTest aBTest = new ABTest(it.next(), subjectTypes);
            aBTest.setSubjectTargetId(subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID ? this.i : this.j);
            a(aBTest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("data");
            for (int i = 0; i < jSONArray.length(); i++) {
                ABTest aBTestFromJsonV1 = ABTest.fromJsonV1(jSONArray.getJSONObject(i));
                if (aBTestFromJsonV1 != null) {
                    a(aBTestFromJsonV1);
                }
            }
            q().a("Android-Fetch-ABTests-Success");
        } catch (JSONException e2) {
            k.e("ABTestManager", "Invalid json. " + e2.getMessage());
            q().a("Android-Fetch-ABTests-Parsing-Failed");
            d.a("ABTestManager.parseResponse: JSONException caught.");
        }
    }
}
