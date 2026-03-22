package androidx.b.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.b.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends d {
    b() {
    }

    @Override // androidx.b.a.d, androidx.b.a.f
    public void a() {
        h.f1056a = new h.a() { // from class: androidx.b.a.b.1
            @Override // androidx.b.a.h.a
            public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
