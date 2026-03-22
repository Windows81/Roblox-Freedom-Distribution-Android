package com.roblox.client.friends.nearby.a;

import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import androidx.databinding.f;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends com.roblox.client.friends.nearby.a.b.a<com.roblox.client.friends.nearby.b.a.a, com.roblox.client.h.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.databinding.e f6132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f6133b;

    public interface b {
        void a(com.roblox.client.friends.nearby.b.a.a aVar);
    }

    public e(androidx.databinding.e eVar, b bVar) {
        this.f6132a = eVar;
        this.f6133b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.friends.nearby.a.b.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.h.a b(ViewGroup viewGroup) {
        final com.roblox.client.h.a aVar = (com.roblox.client.h.a) f.a(LayoutInflater.from(viewGroup.getContext()), o.g.nearby_user_item, viewGroup, false, this.f6132a);
        aVar.d().setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.nearby.a.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.roblox.client.friends.nearby.b.a.a aVarH = aVar.h();
                if (aVarH == null || e.this.f6133b == null) {
                    return;
                }
                e.this.f6133b.a(aVarH);
            }
        });
        aVar.d().setOnTouchListener(new a());
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.friends.nearby.a.b.a
    public void a(com.roblox.client.h.a aVar, com.roblox.client.friends.nearby.b.a.a aVar2) {
        aVar.a(aVar2);
        if (aVar2.e() == 2) {
            ImageView imageView = (ImageView) aVar.d().findViewById(o.f.nearby_user_back_img_view);
            ImageView imageView2 = (ImageView) aVar.d().findViewById(o.f.nearby_user_img_view);
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setInterpolator(new LinearInterpolator());
            rotateAnimation.setDuration(500L);
            rotateAnimation.setRepeatCount(-1);
            imageView.startAnimation(rotateAnimation);
            imageView2.startAnimation(AnimationUtils.loadAnimation(imageView2.getContext(), o.a.pulse_animation));
        }
    }

    private class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f6137b;

        private a() {
            this.f6137b = false;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            View viewFindViewById = view.findViewById(o.f.nearby_user_img_view);
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f6137b = true;
                r4.width -= 20;
                r4.height -= 20;
                viewFindViewById.setLayoutParams(viewFindViewById.getLayoutParams());
            } else {
                if (action == 1) {
                    viewFindViewById.performClick();
                } else if (action == 3) {
                }
                if (this.f6137b) {
                    this.f6137b = false;
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    layoutParams.width += 20;
                    layoutParams.height += 20;
                    viewFindViewById.setLayoutParams(layoutParams);
                }
            }
            return false;
        }
    }
}
