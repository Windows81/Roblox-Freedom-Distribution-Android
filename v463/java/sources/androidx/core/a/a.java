package androidx.core.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {
    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, androidx.core.d.b bVar) throws Exception {
        Object objD;
        if (Build.VERSION.SDK_INT >= 16) {
            if (bVar != null) {
                try {
                    objD = bVar.d();
                } catch (Exception e2) {
                    if (e2 instanceof OperationCanceledException) {
                        throw new androidx.core.d.c();
                    }
                    throw e2;
                }
            } else {
                objD = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) objD);
        }
        if (bVar != null) {
            bVar.b();
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2);
    }
}
