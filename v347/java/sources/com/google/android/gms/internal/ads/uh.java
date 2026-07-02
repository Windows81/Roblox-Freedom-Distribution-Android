package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class uh extends avg<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bdi<String> f5598b;

    public uh(int i, String str, bdi<String> bdiVar, bch bchVar) {
        super(i, str, bchVar);
        this.f5597a = new Object();
        this.f5598b = bdiVar;
    }

    @Override // com.google.android.gms.internal.ads.avg
    protected final bbg<String> a(atf atfVar) {
        String str;
        String str2;
        try {
            byte[] bArr = atfVar.f4476b;
            String str3 = atfVar.f4477c.get("Content-Type");
            if (str3 != null) {
                String[] strArrSplit = str3.split(";");
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].trim().split("=");
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str2 = strArrSplit2[1];
                        break;
                    }
                }
                str2 = "ISO-8859-1";
                str = new String(bArr, str2);
            } else {
                str2 = "ISO-8859-1";
                str = new String(bArr, str2);
            }
        } catch (UnsupportedEncodingException e) {
            str = new String(atfVar.f4476b);
        }
        return bbg.a(str, of.a(atfVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.avg
    public void a(String str) {
        bdi<String> bdiVar;
        synchronized (this.f5597a) {
            bdiVar = this.f5598b;
        }
        if (bdiVar != null) {
            bdiVar.a(str);
        }
    }
}
