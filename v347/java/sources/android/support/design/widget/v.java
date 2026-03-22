package android.support.design.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.support.design.a;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f460a = {R.attr.stateListAnimator};

    static void a(View view, float f) {
        int integer = view.getResources().getInteger(a.f.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{R.attr.enabled, a.b.state_collapsible, -a.b.state_collapsed}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(integer));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(integer));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
