package com.roblox.abtesting;

import com.roblox.abtesting.models.ABTest;
import com.roblox.abtesting.models.AddEmailToSignupForNewUsers;
import com.roblox.client.RobloxSettings;
import com.roblox.client.b;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.i.c;
import com.roblox.client.i.f;
import com.roblox.client.util.g;
import com.roblox.client.util.m;
import com.roblox.client.util.p;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static a o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f6366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.http.f f6367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m f6368d;
    private final p.a e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConcurrentHashMap<String, ABTest> f6365a = new ConcurrentHashMap<>();
    private final InterfaceC0093a f = new InterfaceC0093a() { // from class: com.roblox.abtesting.a.1
        @Override // com.roblox.abtesting.a.InterfaceC0093a
        public void a() {
        }
    };
    private long i = -1;
    private long j = -1;
    private String g = RobloxSettings.abTestEnrollUrl();
    private String h = RobloxSettings.abTestGetEnrollmentsUrl();
    private final ArrayList<String> l = new ArrayList<>();
    private final ArrayList<String> n = new ArrayList<>();
    private final ArrayList<String> m = new ArrayList<>();
    private final ArrayList<String> k = new ArrayList<>();

    /* JADX INFO: renamed from: com.roblox.abtesting.a$a, reason: collision with other inner class name */
    public interface InterfaceC0093a {
        void a();
    }

    public a(p.a aVar) {
        this.e = aVar;
    }

    public static synchronized a a() {
        if (o == null) {
            o = new a(new p.b());
        }
        return o;
    }

    public boolean b() {
        return a(AddEmailToSignupForNewUsers.TEST_NAME, 2);
    }

    public boolean c() {
        return a(b.be(), 2);
    }

    public boolean d() {
        return a(b.bt(), 2);
    }

    public boolean e() {
        return a(b.bP(), 2) || a(b.bP(), 4);
    }

    public boolean f() {
        return a(b.bQ(), 2) || a(b.bQ(), 4);
    }

    public boolean g() {
        return a(b.bP(), 3) || a(b.bP(), 4);
    }

    public boolean h() {
        return a(b.bQ(), 3) || a(b.bQ(), 4);
    }

    public boolean i() {
        return a(b.bT(), 2);
    }

    public boolean j() {
        return !c();
    }

    public void a(m mVar) {
        this.f6368d = mVar;
    }

    public void a(f fVar) {
        this.f6366b = fVar;
    }

    public void a(com.roblox.client.http.f fVar) {
        this.f6367c = fVar;
    }

    public void a(long j) {
        this.i = j;
    }

    public void b(long j) {
        this.j = j;
    }

    public void k() {
        this.l.add(b.bP());
        this.l.add(b.bQ());
        this.n.add(b.bt());
        this.k.add(b.be());
        this.k.add(b.bT());
    }

    public void a(InterfaceC0093a interfaceC0093a) {
        a(this.n, ABTest.SubjectTypes.USER_ID, interfaceC0093a);
    }

    public void b(InterfaceC0093a interfaceC0093a) {
        b(this.n, ABTest.SubjectTypes.USER_ID, interfaceC0093a);
    }

    public void c(InterfaceC0093a interfaceC0093a) {
        a(this.l, ABTest.SubjectTypes.USER_ID, interfaceC0093a);
    }

    public void d(final InterfaceC0093a interfaceC0093a) {
        InterfaceC0093a interfaceC0093a2 = new InterfaceC0093a() { // from class: com.roblox.abtesting.a.2
            @Override // com.roblox.abtesting.a.InterfaceC0093a
            public void a() {
                a.this.e(interfaceC0093a);
            }
        };
        if (c.a().c()) {
            a(this.m, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0093a2);
        } else {
            b(this.m, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0093a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(InterfaceC0093a interfaceC0093a) {
        a(this.k, ABTest.SubjectTypes.BROWSER_TRACKER_ID, interfaceC0093a);
    }

    public void a(List<String> list, ABTest.SubjectTypes subjectTypes, InterfaceC0093a interfaceC0093a) {
        if (interfaceC0093a == null) {
            interfaceC0093a = this.f;
        }
        if (this.f6367c == null || list.size() == 0) {
            interfaceC0093a.a();
            return;
        }
        if ((subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID && this.i == -1) || (subjectTypes == ABTest.SubjectTypes.USER_ID && this.j == -1)) {
            throw new IllegalStateException(subjectTypes + " was not set before enrolling ab tests.");
        }
        a(list, subjectTypes);
        JSONArray jSONArrayA = a(list);
        g.b("ABTestManager", "Enrolling.");
        a(jSONArrayA, this.g, interfaceC0093a);
    }

    public void b(List<String> list, ABTest.SubjectTypes subjectTypes, InterfaceC0093a interfaceC0093a) {
        if (interfaceC0093a == null) {
            interfaceC0093a = this.f;
        }
        if (this.f6367c == null || list.size() == 0) {
            interfaceC0093a.a();
            return;
        }
        if ((subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID && this.i == -1) || (subjectTypes == ABTest.SubjectTypes.USER_ID && this.j == -1)) {
            throw new IllegalStateException(subjectTypes + " was not set before getting enrollments for ab tests.");
        }
        a(list, subjectTypes);
        JSONArray jSONArrayA = a(list);
        g.b("ABTestManager", "Getting enrollments.");
        a(jSONArrayA, this.h, interfaceC0093a);
    }

    private void a(JSONArray jSONArray, String str, final InterfaceC0093a interfaceC0093a) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("enrollments", jSONArray);
            l lVar = new l() { // from class: com.roblox.abtesting.a.3
                @Override // com.roblox.client.http.l
                public void a(j jVar) {
                    g.b("ABTestManager", "getTestsFromNetwork. Response:" + jVar.b() + ".");
                    if (jVar.b() == 200) {
                        a.this.b(jVar.a());
                    } else if (a.this.f6366b != null) {
                        a.this.f6366b.a("Android-Fetch-ABTests-Failed");
                    }
                    if (interfaceC0093a != null) {
                        interfaceC0093a.a();
                    }
                }

                @Override // com.roblox.client.http.l
                public void b(j jVar) {
                }
            };
            g.b("ABTestManager", "getTestsFromNetwork.");
            this.f6367c.a(str, jSONObject.toString(), null, lVar, RobloxSettings.getJsonContentType()).c();
        } catch (JSONException e) {
            interfaceC0093a.a();
        }
    }

    private JSONArray a(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            ABTest aBTest = this.f6365a.get(it.next());
            if (aBTest != null) {
                jSONArray.put(aBTest.toJson());
            }
        }
        return jSONArray;
    }

    boolean a(String str) {
        ABTest aBTest = this.f6365a.get(str);
        if (aBTest == null) {
            return false;
        }
        return ABTest.ENROLLMENT_STATUS_LOCKED_ON.equalsIgnoreCase(aBTest.getStatus()) || ABTest.ENROLLMENT_STATUS_ENROLLED.equalsIgnoreCase(aBTest.getStatus());
    }

    boolean a(String str, int i) {
        ABTest aBTest = this.f6365a.get(str);
        if (aBTest == null) {
            return false;
        }
        if (ABTest.ENROLLMENT_STATUS_LOCKED_ON.equalsIgnoreCase(aBTest.getStatus())) {
            return true;
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
        this.f6365a.put(testName, aBTest);
    }

    private void a(List<String> list, ABTest.SubjectTypes subjectTypes) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            ABTest aBTest = new ABTest(it.next(), subjectTypes);
            aBTest.setSubjectTargetId(subjectTypes == ABTest.SubjectTypes.BROWSER_TRACKER_ID ? this.i : this.j);
            a(aBTest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                ABTest aBTestFromJson = ABTest.fromJson(jSONArray.getJSONObject(i));
                if (aBTestFromJson != null) {
                    a(aBTestFromJson);
                }
            }
            this.f6366b.a("Android-Fetch-ABTests-Success");
        } catch (JSONException e) {
            this.f6366b.a("Android-Fetch-ABTests-Parsing-Failed");
            com.roblox.client.b.c.a("ABTestManager.parseResponse: JSONException caught.");
        }
    }
}
