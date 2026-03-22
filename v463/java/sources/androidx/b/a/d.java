package androidx.b.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.b.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RectF f1049a = new RectF();

    @Override // androidx.b.a.f
    public void g(e eVar) {
    }

    d() {
    }

    @Override // androidx.b.a.f
    public void a() {
        h.f1056a = new h.a() { // from class: androidx.b.a.d.1
            @Override // androidx.b.a.h.a
            public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float fWidth = (rectF.width() - f2) - 1.0f;
                float fHeight = (rectF.height() - f2) - 1.0f;
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    float f4 = -f3;
                    d.this.f1049a.set(f4, f4, f3, f3);
                    int iSave = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(d.this.f1049a, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(d.this.f1049a, 180.0f, 90.0f, true, paint);
                    canvas.translate(fHeight, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(d.this.f1049a, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(d.this.f1049a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(iSave);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, (rectF.right - f3) + 1.0f, rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, (rectF.right - f3) + 1.0f, rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    public void f(e eVar) {
        Rect rect = new Rect();
        j(eVar).a(rect);
        eVar.a((int) Math.ceil(b(eVar)), (int) Math.ceil(c(eVar)));
        eVar.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.b.a.f
    public void h(e eVar) {
        j(eVar).a(eVar.c());
        f(eVar);
    }

    @Override // androidx.b.a.f
    public void a(e eVar, ColorStateList colorStateList) {
        j(eVar).a(colorStateList);
    }

    @Override // androidx.b.a.f
    public ColorStateList i(e eVar) {
        return j(eVar).f();
    }

    @Override // androidx.b.a.f
    public void a(e eVar, float f) {
        j(eVar).a(f);
        f(eVar);
    }

    @Override // androidx.b.a.f
    public float d(e eVar) {
        return j(eVar).a();
    }

    @Override // androidx.b.a.f
    public void c(e eVar, float f) {
        j(eVar).b(f);
    }

    @Override // androidx.b.a.f
    public float e(e eVar) {
        return j(eVar).b();
    }

    @Override // androidx.b.a.f
    public void b(e eVar, float f) {
        j(eVar).c(f);
        f(eVar);
    }

    @Override // androidx.b.a.f
    public float a(e eVar) {
        return j(eVar).c();
    }

    @Override // androidx.b.a.f
    public float b(e eVar) {
        return j(eVar).d();
    }

    @Override // androidx.b.a.f
    public float c(e eVar) {
        return j(eVar).e();
    }

    private h j(e eVar) {
        return (h) eVar.a();
    }
}
