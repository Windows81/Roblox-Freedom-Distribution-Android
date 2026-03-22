package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.xb;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class tt<P> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f5579a = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentMap<String, List<tu<P>>> f5580b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private tu<P> f5581c;

    public final tu<P> a() {
        return this.f5581c;
    }

    protected final tu<P> a(P p, xb.b bVar) throws GeneralSecurityException {
        byte[] bArrArray;
        switch (bVar.e()) {
            case LEGACY:
            case CRUNCHY:
                bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(bVar.d()).array();
                break;
            case TINK:
                bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(bVar.d()).array();
                break;
            case RAW:
                bArrArray = tj.f5575a;
                break;
            default:
                throw new GeneralSecurityException("unknown output prefix type");
        }
        tu<P> tuVar = new tu<>(p, bArrArray, bVar.c(), bVar.e());
        ArrayList arrayList = new ArrayList();
        arrayList.add(tuVar);
        String str = new String(tuVar.b(), f5579a);
        List<tu<P>> listPut = this.f5580b.put(str, Collections.unmodifiableList(arrayList));
        if (listPut != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(listPut);
            arrayList2.add(tuVar);
            this.f5580b.put(str, Collections.unmodifiableList(arrayList2));
        }
        return tuVar;
    }

    protected final void a(tu<P> tuVar) {
        this.f5581c = tuVar;
    }
}
