package com.google.android.gms.internal.ads;

import android.support.v7.widget.RecyclerView;
import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class alk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteArrayOutputStream f4174a = new ByteArrayOutputStream(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Base64OutputStream f4175b = new Base64OutputStream(this.f4174a, 10);

    public final void a(byte[] bArr) throws IOException {
        this.f4175b.write(bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        try {
            this.f4175b.close();
        } catch (IOException e) {
            jd.b("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.f4174a.close();
            string = this.f4174a.toString();
        } catch (IOException e2) {
            jd.b("HashManager: Unable to convert to Base64.", e2);
            string = "";
        } finally {
            this.f4174a = null;
            this.f4175b = null;
        }
        return string;
    }
}
