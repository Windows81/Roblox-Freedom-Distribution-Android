package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class gc extends hb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qh f5041a;

    gc(qh qhVar) {
        this.f5041a = qhVar;
    }

    @Override // com.google.android.gms.internal.ads.hb
    public final pg a(avg<?> avgVar, Map<String, String> map) throws IOException, a {
        try {
            HttpResponse httpResponseB = this.f5041a.b(avgVar, map);
            int statusCode = httpResponseB.getStatusLine().getStatusCode();
            Header[] allHeaders = httpResponseB.getAllHeaders();
            ArrayList arrayList = new ArrayList(allHeaders.length);
            for (Header header : allHeaders) {
                arrayList.add(new apn(header.getName(), header.getValue()));
            }
            if (httpResponseB.getEntity() == null) {
                return new pg(statusCode, arrayList);
            }
            long contentLength = httpResponseB.getEntity().getContentLength();
            if (((int) contentLength) != contentLength) {
                throw new IOException(new StringBuilder(40).append("Response too large: ").append(contentLength).toString());
            }
            return new pg(statusCode, arrayList, (int) httpResponseB.getEntity().getContentLength(), httpResponseB.getEntity().getContent());
        } catch (ConnectTimeoutException e) {
            throw new SocketTimeoutException(e.getMessage());
        }
    }
}
