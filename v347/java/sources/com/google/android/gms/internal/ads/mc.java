package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class mc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f5296a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f5297b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f5298c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static com.google.android.gms.common.util.d f5299d = com.google.android.gms.common.util.g.d();
    private static final Set<String> e = new HashSet(Arrays.asList(new String[0]));
    private final List<String> f;

    public mc() {
        this(null);
    }

    public mc(String str) {
        List<String> listAsList;
        if (c()) {
            String string = UUID.randomUUID().toString();
            if (str == null) {
                String[] strArr = new String[1];
                String strValueOf = String.valueOf(string);
                strArr[0] = strValueOf.length() != 0 ? "network_request_".concat(strValueOf) : new String("network_request_");
                listAsList = Arrays.asList(strArr);
            } else {
                String[] strArr2 = new String[2];
                String strValueOf2 = String.valueOf(str);
                strArr2[0] = strValueOf2.length() != 0 ? "ad_request_".concat(strValueOf2) : new String("ad_request_");
                String strValueOf3 = String.valueOf(string);
                strArr2[1] = strValueOf3.length() != 0 ? "network_request_".concat(strValueOf3) : new String("network_request_");
                listAsList = Arrays.asList(strArr2);
            }
        } else {
            listAsList = new ArrayList<>();
        }
        this.f = listAsList;
    }

    public static void a() {
        synchronized (f5296a) {
            f5297b = false;
            f5298c = false;
            mj.e("Ad debug logging enablement is out of date.");
        }
    }

    static final /* synthetic */ void a(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        a(jsonWriter, (Map<String, ?>) map);
        jsonWriter.endObject();
    }

    private static void a(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!e.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        mj.c("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    static final /* synthetic */ void a(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    private final void a(String str, mi miVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f5299d.a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.f.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            miVar.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            mj.b("unable to log", e2);
        }
        c(stringWriter.toString());
    }

    static final /* synthetic */ void a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        a(jsonWriter, (Map<String, ?>) map);
        if (bArr != null) {
            jsonWriter.name("body").value(com.google.android.gms.common.util.b.a(bArr));
        }
        jsonWriter.endObject();
    }

    public static void a(boolean z) {
        synchronized (f5296a) {
            f5297b = true;
            f5298c = z;
        }
    }

    static final /* synthetic */ void a(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String strA = com.google.android.gms.common.util.b.a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(strA);
        } else {
            String strA2 = ly.a(strA);
            if (strA2 != null) {
                jsonWriter.name("bodydigest").value(strA2);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!((Boolean) aoo.f().a(aro.bh)).booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e2) {
            mj.c("Fail to determine debug setting.", e2);
            return false;
        }
    }

    private final void b(final String str) {
        a("onNetworkRequestError", new mi(str) { // from class: com.google.android.gms.internal.ads.mh

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f5311a;

            {
                this.f5311a = str;
            }

            @Override // com.google.android.gms.internal.ads.mi
            public final void a(JsonWriter jsonWriter) throws IOException {
                mc.a(this.f5311a, jsonWriter);
            }
        });
    }

    private final void b(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        a("onNetworkRequest", new mi(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.md

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f5300a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f5301b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Map f5302c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final byte[] f5303d;

            {
                this.f5300a = str;
                this.f5301b = str2;
                this.f5302c = map;
                this.f5303d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.mi
            public final void a(JsonWriter jsonWriter) throws IOException {
                mc.a(this.f5300a, this.f5301b, this.f5302c, this.f5303d, jsonWriter);
            }
        });
    }

    private final void b(final Map<String, ?> map, final int i) {
        a("onNetworkResponse", new mi(i, map) { // from class: com.google.android.gms.internal.ads.mf

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f5308a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Map f5309b;

            {
                this.f5308a = i;
                this.f5309b = map;
            }

            @Override // com.google.android.gms.internal.ads.mi
            public final void a(JsonWriter jsonWriter) throws IOException {
                mc.a(this.f5308a, this.f5309b, jsonWriter);
            }
        });
    }

    public static boolean b() {
        boolean z;
        synchronized (f5296a) {
            z = f5297b;
        }
        return z;
    }

    private static synchronized void c(String str) {
        mj.d("GMA Debug BEGIN");
        for (int i = 0; i < str.length(); i += 4000) {
            String strValueOf = String.valueOf(str.substring(i, Math.min(i + 4000, str.length())));
            mj.d(strValueOf.length() != 0 ? "GMA Debug CONTENT ".concat(strValueOf) : new String("GMA Debug CONTENT "));
        }
        mj.d("GMA Debug FINISH");
    }

    public static boolean c() {
        boolean z;
        synchronized (f5296a) {
            z = f5297b && f5298c;
        }
        return z;
    }

    public final void a(String str) {
        if (c() && str != null) {
            a(str.getBytes());
        }
    }

    public final void a(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (c()) {
            b(str, str2, map, bArr);
        }
    }

    public final void a(HttpURLConnection httpURLConnection, int i) {
        String responseMessage = null;
        if (c()) {
            b(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    String strValueOf = String.valueOf(e2.getMessage());
                    mj.e(strValueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(strValueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                b(responseMessage);
            }
        }
    }

    public final void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (c()) {
            b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void a(Map<String, ?> map, int i) {
        if (c()) {
            b(map, i);
            if (i < 200 || i >= 300) {
                b(null);
            }
        }
    }

    public final void a(final byte[] bArr) {
        a("onNetworkResponseBody", new mi(bArr) { // from class: com.google.android.gms.internal.ads.mg

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final byte[] f5310a;

            {
                this.f5310a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.mi
            public final void a(JsonWriter jsonWriter) throws IOException {
                mc.a(this.f5310a, jsonWriter);
            }
        });
    }
}
