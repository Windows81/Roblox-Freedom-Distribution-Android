package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.g;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.a.c;
import androidx.core.h.r;
import com.google.android.material.a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BottomSheetBehavior<FrameLayout> f4894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BottomSheetBehavior.a f4897e;

    public a(Context context, int i) {
        super(context, a(context, i));
        this.f4893a = true;
        this.f4895c = true;
        this.f4897e = new BottomSheetBehavior.a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(View view, int i2) {
                if (i2 == 5) {
                    a.this.cancel();
                }
            }
        };
        b(1);
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(a(i, null, null));
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(a(0, view, null));
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f4893a != z) {
            this.f4893a = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f4894b;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.b(z);
            }
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f4894b;
        if (bottomSheetBehavior == null || bottomSheetBehavior.b() != 5) {
            return;
        }
        this.f4894b.b(4);
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f4893a) {
            this.f4893a = true;
        }
        this.f4895c = z;
        this.f4896d = true;
    }

    private View a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), a.g.design_bottom_sheet_dialog, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(a.e.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(a.e.design_bottom_sheet);
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorB = BottomSheetBehavior.b(frameLayout2);
        this.f4894b = bottomSheetBehaviorB;
        bottomSheetBehaviorB.a(this.f4897e);
        this.f4894b.b(this.f4893a);
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(a.e.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (a.this.f4893a && a.this.isShowing() && a.this.b()) {
                    a.this.cancel();
                }
            }
        });
        r.a(frameLayout2, new androidx.core.h.a() { // from class: com.google.android.material.bottomsheet.a.2
            @Override // androidx.core.h.a
            public void a(View view2, c cVar) {
                super.a(view2, cVar);
                if (a.this.f4893a) {
                    cVar.a(1048576);
                    cVar.e(true);
                } else {
                    cVar.e(false);
                }
            }

            @Override // androidx.core.h.a
            public boolean a(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576 && a.this.f4893a) {
                    a.this.cancel();
                    return true;
                }
                return super.a(view2, i2, bundle);
            }
        });
        frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.bottomsheet.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return true;
            }
        });
        return frameLayout;
    }

    boolean b() {
        if (!this.f4896d) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f4895c = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f4896d = true;
        }
        return this.f4895c;
    }

    private static int a(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(a.b.bottomSheetDialogTheme, typedValue, true)) {
            return typedValue.resourceId;
        }
        return a.h.Theme_Design_Light_BottomSheetDialog;
    }
}
