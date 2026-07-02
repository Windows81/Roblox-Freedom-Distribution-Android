package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
class c implements d {
    c() {
    }

    @Override // android.support.transition.d
    public void a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        animator.addPauseListener(animatorListenerAdapter);
    }

    @Override // android.support.transition.d
    public void a(Animator animator) {
        animator.pause();
    }

    @Override // android.support.transition.d
    public void b(Animator animator) {
        animator.resume();
    }
}
