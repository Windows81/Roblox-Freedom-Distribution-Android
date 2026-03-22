package com.roblox.client.components;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxGenderPicker extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RbxButton f5809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RbxButton f5810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f5811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f5812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f5813e;
    private TextView f;
    private TextView g;
    private RbxTextView h;
    private int i;
    private int j;
    private int k;
    private a l;

    public interface a {
        void a(RbxButton rbxButton);
    }

    public RbxGenderPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5809a = null;
        this.f5810b = null;
        this.f5811c = null;
        this.f5812d = null;
        this.f5813e = null;
        this.i = 0;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(o.g.rbx_updated_gender_picker, (ViewGroup) getRootView());
        this.f = (TextView) findViewById(o.f.rbxGenderBtnMaleTextView);
        this.g = (TextView) findViewById(o.f.rbxGenderBtnFemaleTextView);
        this.j = androidx.core.a.b.c(context, o.c.RbxGray4);
        this.k = androidx.core.a.b.c(context, o.c.RbxBlack);
        h.a(this.f, context, attributeSet);
        h.a(this.g, context, attributeSet);
        this.f5809a = (RbxButton) findViewById(o.f.rbxGenderBtnMale);
        this.f5810b = (RbxButton) findViewById(o.f.rbxGenderBtnFemale);
        this.f5811c = (ImageView) findViewById(o.f.rbxGenderBtnMaleBg);
        this.f5812d = (ImageView) findViewById(o.f.rbxGenderBtnFemaleBg);
        this.f5813e = (LinearLayout) findViewById(o.f.rbxGenderContainer);
        this.h = (RbxTextView) findViewById(o.f.rbxGenderBottomText);
        this.f5810b.setContentDescription(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Description_GenderPickerFemaleContentDesc, new Object[0]));
        this.f5809a.setContentDescription(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Description_GenderPickerMaleContentDesc, new Object[0]));
        this.g.setText(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Female, new Object[0]));
        this.h.setText(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_GenderRequired, new Object[0]));
        this.f.setText(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Male, new Object[0]));
        setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RbxGenderPicker.this.e();
            }
        });
        this.f5809a.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxGenderPicker.this.i != 1) {
                    RbxGenderPicker.this.f5811c.setImageResource(o.e.icon_male_on);
                    RbxGenderPicker.this.f5812d.setImageResource(o.e.icon_female);
                    RbxGenderPicker.this.i = 1;
                    RbxGenderPicker.this.f.setTextColor(RbxGenderPicker.this.k);
                    RbxGenderPicker.this.g.setTextColor(RbxGenderPicker.this.j);
                    RbxGenderPicker.this.b();
                } else {
                    RbxGenderPicker.this.e();
                }
                if (RbxGenderPicker.this.l != null) {
                    RbxGenderPicker.this.l.a(RbxGenderPicker.this.f5809a);
                }
            }
        });
        this.f5810b.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxGenderPicker.this.i != 2) {
                    RbxGenderPicker.this.f5811c.setImageResource(o.e.icon_male);
                    RbxGenderPicker.this.f5812d.setImageResource(o.e.icon_female_on);
                    RbxGenderPicker.this.i = 2;
                    RbxGenderPicker.this.f.setTextColor(RbxGenderPicker.this.j);
                    RbxGenderPicker.this.g.setTextColor(RbxGenderPicker.this.k);
                    RbxGenderPicker.this.b();
                } else {
                    RbxGenderPicker.this.e();
                }
                if (RbxGenderPicker.this.l != null) {
                    RbxGenderPicker.this.l.a(RbxGenderPicker.this.f5810b);
                }
            }
        });
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5818a = this.i;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setValue(savedState.f5818a);
    }

    public void setValue(int i) {
        if (i == 1) {
            this.f5809a.callOnClick();
        } else {
            if (i != 2) {
                return;
            }
            this.f5810b.callOnClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.i = 0;
        this.f5812d.setImageResource(o.e.icon_female);
        this.f5811c.setImageResource(o.e.icon_male);
        this.f5813e.setBackgroundResource(o.e.rbx_bg_gender_full);
        this.f.setTextColor(this.j);
        this.g.setTextColor(this.j);
    }

    public void a() {
        this.f5813e.setBackgroundResource(o.e.rbx_bg_gender_full_error);
        if (this.h.getVisibility() != 0) {
            g.a(this.h, 0, 0.0f, 1.0f, 200L);
        }
    }

    public void b() {
        this.f5813e.setBackgroundResource(o.e.rbx_bg_gender_full_success);
        this.h.setVisibility(4);
    }

    public int getValue() {
        return this.i;
    }

    public void c() {
        startAnimation(g.a(this));
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.roblox.client.components.RbxGenderPicker.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };
        this.f5810b.setOnTouchListener(onTouchListener);
        this.f5809a.setOnTouchListener(onTouchListener);
    }

    public void d() {
        startAnimation(g.b(this));
        this.f5810b.setOnTouchListener(null);
        this.f5809a.setOnTouchListener(null);
    }

    public void setOnGenderButtonPressedListener(a aVar) {
        this.l = aVar;
    }

    public a getOnGenderButtonPressedListener() {
        return this.l;
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.roblox.client.components.RbxGenderPicker.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f5818a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f5818a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5818a);
        }
    }
}
