package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class hb implements qh {
    public abstract pg a(avg<?> avgVar, Map<String, String> map) throws IOException, a;

    @Override // com.google.android.gms.internal.ads.qh
    @Deprecated
    public final HttpResponse b(avg<?> avgVar, Map<String, String> map) throws IOException, a {
        pg pgVarA = a(avgVar, map);
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), pgVarA.a(), ""));
        ArrayList arrayList = new ArrayList();
        for (apn apnVar : pgVarA.b()) {
            arrayList.add(new BasicHeader(apnVar.a(), apnVar.b()));
        }
        basicHttpResponse.setHeaders((Header[]) arrayList.toArray(new Header[arrayList.size()]));
        InputStream inputStreamD = pgVarA.d();
        if (inputStreamD != null) {
            BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
            basicHttpEntity.setContent(inputStreamD);
            basicHttpEntity.setContentLength(pgVarA.c());
            basicHttpResponse.setEntity(basicHttpEntity);
        }
        return basicHttpResponse;
    }
}
