package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f1227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1228c;

    public void setEmptyVisibility(int i) {
        this.f1228c = i;
    }

    public int getEmptyVisibility() {
        return this.f1228c;
    }

    public View getContent() {
        return this.f1227b;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void a(ConstraintLayout constraintLayout) {
        if (this.f1226a == -1 && !isInEditMode()) {
            setVisibility(this.f1228c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f1226a);
        this.f1227b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.a) viewFindViewById.getLayoutParams()).aa = true;
            this.f1227b.setVisibility(0);
            setVisibility(0);
        }
    }

    public void setContentId(int i) {
        View viewFindViewById;
        if (this.f1226a == i) {
            return;
        }
        View view = this.f1227b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.a) this.f1227b.getLayoutParams()).aa = false;
            this.f1227b = null;
        }
        this.f1226a = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f1227b == null) {
            return;
        }
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        ConstraintLayout.a aVar2 = (ConstraintLayout.a) this.f1227b.getLayoutParams();
        aVar2.al.e(0);
        aVar.al.j(aVar2.al.p());
        aVar.al.k(aVar2.al.r());
        aVar2.al.e(8);
    }
}
