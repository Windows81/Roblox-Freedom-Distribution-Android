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
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class RbxGenderPicker extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RbxButton f6690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RbxButton f6691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f6692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f6693d;
    private LinearLayout e;
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

    public RbxGenderPicker(Context context) {
        super(context);
        this.f6690a = null;
        this.f6691b = null;
        this.f6692c = null;
        this.f6693d = null;
        this.e = null;
        this.i = 0;
        a(context, (AttributeSet) null);
    }

    public RbxGenderPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6690a = null;
        this.f6691b = null;
        this.f6692c = null;
        this.f6693d = null;
        this.e = null;
        this.i = 0;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(R.layout.rbx_updated_gender_picker, (ViewGroup) getRootView());
        this.f = (TextView) findViewById(R.id.rbxGenderBtnMaleTextView);
        this.g = (TextView) findViewById(R.id.rbxGenderBtnFemaleTextView);
        this.j = android.support.v4.a.c.c(context, R.color.RbxGray4);
        this.k = android.support.v4.a.c.c(context, R.color.RbxBlack);
        m.a(this.f, context, attributeSet);
        m.a(this.g, context, attributeSet);
        this.f6690a = (RbxButton) findViewById(R.id.rbxGenderBtnMale);
        this.f6691b = (RbxButton) findViewById(R.id.rbxGenderBtnFemale);
        this.f6692c = (ImageView) findViewById(R.id.rbxGenderBtnMaleBg);
        this.f6693d = (ImageView) findViewById(R.id.rbxGenderBtnFemaleBg);
        this.e = (LinearLayout) findViewById(R.id.rbxGenderContainer);
        this.h = (RbxTextView) findViewById(R.id.rbxGenderBottomText);
        setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RbxGenderPicker.this.e();
            }
        });
        this.f6690a.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxGenderPicker.this.i != 1) {
                    RbxGenderPicker.this.f6692c.setImageResource(R.drawable.icon_male_on);
                    RbxGenderPicker.this.f6693d.setImageResource(R.drawable.icon_female);
                    RbxGenderPicker.this.i = 1;
                    RbxGenderPicker.this.f.setTextColor(RbxGenderPicker.this.k);
                    RbxGenderPicker.this.g.setTextColor(RbxGenderPicker.this.j);
                    RbxGenderPicker.this.b();
                } else {
                    RbxGenderPicker.this.e();
                }
                if (RbxGenderPicker.this.l != null) {
                    RbxGenderPicker.this.l.a(RbxGenderPicker.this.f6690a);
                }
            }
        });
        this.f6691b.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxGenderPicker.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxGenderPicker.this.i != 2) {
                    RbxGenderPicker.this.f6692c.setImageResource(R.drawable.icon_male);
                    RbxGenderPicker.this.f6693d.setImageResource(R.drawable.icon_female_on);
                    RbxGenderPicker.this.i = 2;
                    RbxGenderPicker.this.f.setTextColor(RbxGenderPicker.this.j);
                    RbxGenderPicker.this.g.setTextColor(RbxGenderPicker.this.k);
                    RbxGenderPicker.this.b();
                } else {
                    RbxGenderPicker.this.e();
                }
                if (RbxGenderPicker.this.l != null) {
                    RbxGenderPicker.this.l.a(RbxGenderPicker.this.f6691b);
                }
            }
        });
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6698a = this.i;
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
        setValue(savedState.f6698a);
    }

    public void setValue(int i) {
        switch (i) {
            case 1:
                this.f6690a.callOnClick();
                break;
            case 2:
                this.f6691b.callOnClick();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.i = 0;
        this.f6693d.setImageResource(R.drawable.icon_female);
        this.f6692c.setImageResource(R.drawable.icon_male);
        this.e.setBackgroundResource(R.drawable.rbx_bg_gender_full);
        this.f.setTextColor(this.j);
        this.g.setTextColor(this.j);
    }

    public void a() {
        this.e.setBackgroundResource(R.drawable.rbx_bg_gender_full_error);
        if (this.h.getVisibility() != 0) {
            l.a(this.h, 0, 0.0f, 1.0f, 200L);
        }
    }

    public void b() {
        this.e.setBackgroundResource(R.drawable.rbx_bg_gender_full_success);
        this.h.setVisibility(4);
    }

    public int getValue() {
        return this.i;
    }

    public void c() {
        startAnimation(l.a(this));
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.roblox.client.components.RbxGenderPicker.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };
        this.f6691b.setOnTouchListener(onTouchListener);
        this.f6690a.setOnTouchListener(onTouchListener);
    }

    public void d() {
        startAnimation(l.b(this));
        this.f6691b.setOnTouchListener(null);
        this.f6690a.setOnTouchListener(null);
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
        int f6698a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6698a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6698a);
        }
    }
}
