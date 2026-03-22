package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class z {
    static View a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        am.a(view, matrix);
        am.b(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int iRound = Math.round(rectF.left);
        int iRound2 = Math.round(rectF.top);
        int iRound3 = Math.round(rectF.right);
        int iRound4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmapA = a(view, matrix, rectF);
        if (bitmapA != null) {
            imageView.setImageBitmap(bitmapA);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
        imageView.layout(iRound, iRound2, iRound3, iRound4);
        return imageView;
    }

    private static Bitmap a(View view, Matrix matrix, RectF rectF) {
        int iRound = Math.round(rectF.width());
        int iRound2 = Math.round(rectF.height());
        if (iRound <= 0 || iRound2 <= 0) {
            return null;
        }
        float fMin = Math.min(1.0f, 1048576.0f / (iRound * iRound2));
        matrix.postTranslate(-rectF.left, -rectF.top);
        matrix.postScale(fMin, fMin);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (iRound * fMin), (int) (iRound2 * fMin), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.concat(matrix);
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    static Animator a(Animator animator, Animator animator2) {
        if (animator != null) {
            if (animator2 == null) {
                return animator;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(animator, animator2);
            return animatorSet;
        }
        return animator2;
    }
}
