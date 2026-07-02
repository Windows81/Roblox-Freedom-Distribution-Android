package android.support.v4.view;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static boolean a(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
