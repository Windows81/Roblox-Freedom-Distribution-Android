package android.support.v4.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {
    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, android.support.v4.os.b bVar) throws Exception {
        Object objD;
        if (Build.VERSION.SDK_INT >= 16) {
            if (bVar != null) {
                try {
                    objD = bVar.d();
                } catch (Exception e) {
                    if (e instanceof OperationCanceledException) {
                        throw new android.support.v4.os.d();
                    }
                    throw e;
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
