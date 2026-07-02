package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import android.support.annotation.Keep;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.ayi;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jk;
import com.google.android.gms.internal.ads.zzang;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Keep
@cm
@KeepName
public class HttpClient implements ae<ayi> {
    private final Context mContext;
    private final zzang zzyf;

    @cm
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3086b;

        public a(String str, String str2) {
            this.f3085a = str;
            this.f3086b = str2;
        }

        public final String a() {
            return this.f3085a;
        }

        public final String b() {
            return this.f3086b;
        }
    }

    @cm
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final URL f3088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ArrayList<a> f3089c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f3090d;

        b(String str, URL url, ArrayList<a> arrayList, String str2) {
            this.f3087a = str;
            this.f3088b = url;
            this.f3089c = arrayList;
            this.f3090d = str2;
        }

        public final String a() {
            return this.f3087a;
        }

        public final URL b() {
            return this.f3088b;
        }

        public final ArrayList<a> c() {
            return this.f3089c;
        }

        public final String d() {
            return this.f3090d;
        }
    }

    @cm
    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f3091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f3092b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f3093c;

        public c(HttpClient httpClient, boolean z, d dVar, String str) {
            this.f3092b = z;
            this.f3091a = dVar;
            this.f3093c = str;
        }

        public final String a() {
            return this.f3093c;
        }

        public final d b() {
            return this.f3091a;
        }

        public final boolean c() {
            return this.f3092b;
        }
    }

    @cm
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3095b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<a> f3096c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f3097d;

        d(String str, int i, List<a> list, String str2) {
            this.f3094a = str;
            this.f3095b = i;
            this.f3096c = list;
            this.f3097d = str2;
        }

        public final String a() {
            return this.f3094a;
        }

        public final int b() {
            return this.f3095b;
        }

        public final Iterable<a> c() {
            return this.f3096c;
        }

        public final String d() {
            return this.f3097d;
        }
    }

    public HttpClient(Context context, zzang zzangVar) {
        this.mContext = context;
        this.zzyf = zzangVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.ads.internal.gmsg.HttpClient.c zza(com.google.android.gms.ads.internal.gmsg.HttpClient.b r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.gmsg.HttpClient.zza(com.google.android.gms.ads.internal.gmsg.HttpClient$b):com.google.android.gms.ads.internal.gmsg.HttpClient$c");
    }

    private static JSONObject zza(d dVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", dVar.a());
            if (dVar.d() != null) {
                jSONObject.put("body", dVar.d());
            }
            JSONArray jSONArray = new JSONArray();
            for (a aVar : dVar.c()) {
                jSONArray.put(new JSONObject().put("key", aVar.a()).put("value", aVar.b()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", dVar.b());
        } catch (JSONException e) {
            jd.b("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    private static b zzc(JSONObject jSONObject) {
        URL url;
        String strOptString = jSONObject.optString("http_request_id");
        String strOptString2 = jSONObject.optString("url");
        String strOptString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(strOptString2);
        } catch (MalformedURLException e) {
            jd.b("Error constructing http request.", e);
            url = null;
        }
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("headers");
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                arrayList.add(new a(jSONObjectOptJSONObject.optString("key"), jSONObjectOptJSONObject.optString("value")));
            }
        }
        return new b(strOptString, url, arrayList, strOptString3);
    }

    @Keep
    @KeepName
    public JSONObject send(JSONObject jSONObject) throws Throwable {
        JSONObject jSONObject2 = new JSONObject();
        String strOptString = "";
        try {
            strOptString = jSONObject.optString("http_request_id");
            c cVarZza = zza(zzc(jSONObject));
            if (cVarZza.c()) {
                jSONObject2.put("response", zza(cVarZza.b()));
                jSONObject2.put("success", true);
            } else {
                jSONObject2.put("response", new JSONObject().put("http_request_id", strOptString));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", cVarZza.a());
            }
        } catch (Exception e) {
            jd.b("Error executing http request.", e);
            try {
                jSONObject2.put("response", new JSONObject().put("http_request_id", strOptString));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", e.toString());
            } catch (JSONException e2) {
                jd.b("Error executing http request.", e2);
            }
        }
        return jSONObject2;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(ayi ayiVar, Map map) {
        jk.a(new af(this, map, ayiVar));
    }
}
