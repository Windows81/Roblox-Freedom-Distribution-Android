package com.roblox.client.components;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RbxBirthdayPicker extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Spinner f6659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Spinner f6660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Spinner f6661d;
    private LinearLayout e;
    private RbxTextView f;
    private h g;
    private ArrayList<Integer> h;
    private ArrayList<Integer> i;
    private ArrayList<Integer> j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private HashMap<Integer, String> s;
    private HashMap<Integer, String> t;

    public RbxBirthdayPicker(Context context) {
        super(context);
        this.f6658a = "RbxBirthdayPicker";
        this.n = -1;
        this.o = -1;
        this.p = -1;
        a(context, (AttributeSet) null);
    }

    public RbxBirthdayPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6658a = "RbxBirthdayPicker";
        this.n = -1;
        this.o = -1;
        this.p = -1;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (RobloxSettings.isPhone()) {
            LayoutInflater.from(context).inflate(R.layout.rbx_birthday_picker_phone, (ViewGroup) getRootView());
        } else {
            LayoutInflater.from(context).inflate(R.layout.rbx_birthday_picker, (ViewGroup) getRootView());
        }
        this.f6659b = (Spinner) findViewById(R.id.rbxBirthdayDaySpinner);
        this.f6660c = (Spinner) findViewById(R.id.rbxBirthdayMonthSpinner);
        this.f6661d = (Spinner) findViewById(R.id.rbxBirthdayYearSpinner);
        this.e = (LinearLayout) findViewById(R.id.rbxBirthdayContainer);
        this.f = (RbxTextView) findViewById(R.id.rbxBirthdayBottomText);
        this.q = getResources().getColor(R.color.RbxGray2);
        this.r = getResources().getColor(R.color.RbxTextLight);
        m.a((TextView) findViewById(R.id.rbxBirthdayText), context, attributeSet);
        this.s = new HashMap<>();
        String[] strArr = {getResources().getString(R.string.Authentication_SignUp_Label_MonthJanuary), getResources().getString(R.string.Authentication_SignUp_Label_MonthFebruary), getResources().getString(R.string.Authentication_SignUp_Label_MonthMarch), getResources().getString(R.string.Authentication_SignUp_Label_MonthApril), getResources().getString(R.string.Authentication_SignUp_Label_MonthMay), getResources().getString(R.string.Authentication_SignUp_Label_MonthJune), getResources().getString(R.string.Authentication_SignUp_Label_MonthJuly), getResources().getString(R.string.Authentication_SignUp_Label_MonthAugust), getResources().getString(R.string.Authentication_SignUp_Label_MonthSeptember), getResources().getString(R.string.Authentication_SignUp_Label_MonthOctober), getResources().getString(R.string.Authentication_SignUp_Label_MonthNovember), getResources().getString(R.string.Authentication_SignUp_Label_MonthDecember)};
        for (int i = 0; i < strArr.length; i++) {
            this.s.put(Integer.valueOf(i), strArr[i]);
        }
        Calendar calendar = Calendar.getInstance();
        this.k = calendar.get(1);
        this.l = calendar.get(2);
        this.m = calendar.get(5);
        this.t = new HashMap<>();
        String[] strArr2 = {getResources().getString(R.string.Authentication_SignUp_Label_Date1), getResources().getString(R.string.Authentication_SignUp_Label_Date2), getResources().getString(R.string.Authentication_SignUp_Label_Date3), getResources().getString(R.string.Authentication_SignUp_Label_Date4), getResources().getString(R.string.Authentication_SignUp_Label_Date5), getResources().getString(R.string.Authentication_SignUp_Label_Date6), getResources().getString(R.string.Authentication_SignUp_Label_Date7), getResources().getString(R.string.Authentication_SignUp_Label_Date8), getResources().getString(R.string.Authentication_SignUp_Label_Date9), getResources().getString(R.string.Authentication_SignUp_Label_Date10), getResources().getString(R.string.Authentication_SignUp_Label_Date11), getResources().getString(R.string.Authentication_SignUp_Label_Date12), getResources().getString(R.string.Authentication_SignUp_Label_Date13), getResources().getString(R.string.Authentication_SignUp_Label_Date14), getResources().getString(R.string.Authentication_SignUp_Label_Date15), getResources().getString(R.string.Authentication_SignUp_Label_Date16), getResources().getString(R.string.Authentication_SignUp_Label_Date17), getResources().getString(R.string.Authentication_SignUp_Label_Date18), getResources().getString(R.string.Authentication_SignUp_Label_Date19), getResources().getString(R.string.Authentication_SignUp_Label_Date20), getResources().getString(R.string.Authentication_SignUp_Label_Date21), getResources().getString(R.string.Authentication_SignUp_Label_Date22), getResources().getString(R.string.Authentication_SignUp_Label_Date23), getResources().getString(R.string.Authentication_SignUp_Label_Date24), getResources().getString(R.string.Authentication_SignUp_Label_Date25), getResources().getString(R.string.Authentication_SignUp_Label_Date26), getResources().getString(R.string.Authentication_SignUp_Label_Date27), getResources().getString(R.string.Authentication_SignUp_Label_Date28), getResources().getString(R.string.Authentication_SignUp_Label_Date29), getResources().getString(R.string.Authentication_SignUp_Label_Date30), getResources().getString(R.string.Authentication_SignUp_Label_Date31)};
        this.h = new ArrayList<>();
        for (int i2 = 1; i2 <= 31; i2++) {
            this.h.add(Integer.valueOf(i2));
        }
        for (int i3 = 1; i3 <= strArr2.length; i3++) {
            this.t.put(Integer.valueOf(i3), strArr2[i3 - 1]);
        }
        this.i = getYearList();
        this.j = getMonthList();
        if (!isInEditMode()) {
            ArrayList<Integer> dayList = getDayList();
            dayList.add(0, -1);
            ArrayList<Integer> yearList = getYearList();
            yearList.add(0, -1);
            ArrayList<Integer> monthList = getMonthList();
            monthList.add(0, -1);
            setDaySpinner(dayList);
            setYearSpinner(yearList);
            setMonthSpinner(monthList);
            this.f6659b.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.1
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                    boolean zE = RbxBirthdayPicker.this.e();
                    if (RbxBirthdayPicker.this.g != null && zE) {
                        RbxBirthdayPicker.this.g.a(0, RbxBirthdayPicker.this.n);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f6660c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                    boolean zF = RbxBirthdayPicker.this.f();
                    if (RbxBirthdayPicker.this.g != null && zF) {
                        RbxBirthdayPicker.this.g.a(1, RbxBirthdayPicker.this.o);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f6661d.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                    boolean zG = RbxBirthdayPicker.this.g();
                    if (RbxBirthdayPicker.this.g != null && zG) {
                        RbxBirthdayPicker.this.g.a(2, RbxBirthdayPicker.this.p);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6667b = this.o;
        savedState.f6666a = this.n;
        savedState.f6668c = this.p;
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
        a(savedState.f6667b, savedState.f6666a, savedState.f6668c);
    }

    public void a(int i, int i2, int i3) {
        this.p = i3;
        i();
        this.o = i;
        j();
        this.n = i2;
        h();
    }

    public int getDay() {
        return ((Integer) this.f6659b.getSelectedItem()).intValue();
    }

    public int getMonth() {
        return ((Integer) this.f6660c.getSelectedItem()).intValue();
    }

    public int getYear() {
        return ((Integer) this.f6661d.getSelectedItem()).intValue();
    }

    public void a() {
        this.e.setBackgroundResource(R.drawable.rbx_bg_gender_full_error);
        if (this.f.getVisibility() != 0) {
            l.a(this.f, 0, 0.0f, 1.0f, 200L);
        }
    }

    public void b() {
        this.e.setBackgroundResource(R.drawable.rbx_bg_gender_full_success);
        this.f.setVisibility(4);
    }

    public void setRbxDateChangedListener(h hVar) {
        this.g = hVar;
    }

    public h getRbxDateChangedListener() {
        return this.g;
    }

    public void c() {
        startAnimation(l.a(this));
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };
        this.f6659b.setOnTouchListener(onTouchListener);
        this.f6660c.setOnTouchListener(onTouchListener);
        this.f6661d.setOnTouchListener(onTouchListener);
    }

    public void d() {
        startAnimation(l.b(this));
        this.f6659b.setOnTouchListener(null);
        this.f6660c.setOnTouchListener(null);
        this.f6661d.setOnTouchListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        int i = this.n;
        this.n = ((Integer) this.f6659b.getSelectedItem()).intValue();
        if (((Integer) this.f6659b.getItemAtPosition(0)).intValue() == -1 && this.n != -1) {
            h();
        }
        return i != this.n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        int i = this.o;
        this.o = ((Integer) this.f6660c.getSelectedItem()).intValue();
        h();
        if (((Integer) this.f6660c.getItemAtPosition(0)).intValue() == -1 && this.o != -1) {
            j();
        }
        return i != this.o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        int i = this.p;
        this.p = ((Integer) this.f6661d.getSelectedItem()).intValue();
        j();
        if (((Integer) this.f6661d.getItemAtPosition(0)).intValue() == -1 && this.p != -1) {
            i();
        }
        return i != this.p;
    }

    private void h() {
        ArrayList<Integer> dayList = getDayList();
        if (this.n == -1) {
            dayList.add(0, -1);
        }
        int size = dayList.size() - 1;
        int iIntValue = dayList.get(size).intValue();
        int iIndexOf = dayList.indexOf(Integer.valueOf(this.n));
        setDaySpinner(dayList);
        if (this.n > iIntValue) {
            this.f6659b.setSelection(size);
        } else if (iIndexOf == -1) {
            this.f6659b.setSelection(0);
        } else {
            this.f6659b.setSelection(iIndexOf);
        }
    }

    private void i() {
        int iIndexOf = this.i.indexOf(Integer.valueOf(this.p));
        setYearSpinner(this.i);
        if (iIndexOf == -1) {
            this.f6661d.setSelection(0);
        } else {
            this.f6661d.setSelection(iIndexOf);
        }
    }

    private void j() {
        List<Integer> listSubList;
        ArrayList<Integer> monthList;
        if (this.o == -1) {
            if (this.p == this.k) {
                monthList = new ArrayList<>(this.j.subList(0, this.l + 1));
            } else {
                monthList = getMonthList();
            }
            monthList.add(0, -1);
            listSubList = monthList;
        } else if (this.p == this.k) {
            listSubList = this.j.subList(0, this.l + 1);
        } else {
            listSubList = this.j;
        }
        int size = listSubList.size() - 1;
        int iIntValue = listSubList.get(size).intValue();
        int iIndexOf = listSubList.indexOf(Integer.valueOf(this.o));
        setMonthSpinner(listSubList);
        if (this.o > iIntValue) {
            this.f6660c.setSelection(size);
        } else if (iIndexOf == -1) {
            this.f6660c.setSelection(0);
        } else {
            this.f6660c.setSelection(iIndexOf);
        }
    }

    private ArrayList<Integer> getDayList() {
        int iA = 31;
        if (this.o != -1) {
            if (this.k == this.p && this.l == this.o) {
                iA = this.m;
            } else {
                iA = a(this.o, this.p);
            }
        }
        return new ArrayList<>(this.h.subList(0, iA));
    }

    private ArrayList<Integer> getYearList() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = this.k; i >= this.k - 100; i--) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    private ArrayList<Integer> getMonthList() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = 0; i <= 11; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    private void setDaySpinner(List<Integer> list) {
        a aVar = new a(getContext(), R.layout.rbx_spinner_top, list);
        aVar.setDropDownViewResource(R.layout.rbx_spinner_item);
        aVar.a("--");
        aVar.a(this.t);
        this.f6659b.setAdapter((SpinnerAdapter) aVar);
    }

    private void setMonthSpinner(List<Integer> list) {
        a aVar = new a(getContext(), R.layout.rbx_spinner_top, list);
        aVar.setDropDownViewResource(R.layout.rbx_spinner_item);
        aVar.a("--");
        aVar.a(this.s);
        this.f6660c.setAdapter((SpinnerAdapter) aVar);
    }

    private void setYearSpinner(List<Integer> list) {
        a aVar = new a(getContext(), R.layout.rbx_spinner_top, list);
        aVar.setDropDownViewResource(R.layout.rbx_spinner_item);
        aVar.a("----");
        this.f6661d.setAdapter((SpinnerAdapter) aVar);
    }

    private int a(int i, int i2) {
        if (i == 1) {
            return (i2 != -1 && new GregorianCalendar().isLeapYear(i2)) ? 29 : 28;
        }
        if (i == 3 || i == 5 || i == 8 || i == 10) {
            return 30;
        }
        return 31;
    }

    private class a<T> extends ArrayAdapter<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6670b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private HashMap<Integer, String> f6671c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f6672d;
        private int e;

        public a(Context context, int i, List<T> list) {
            super(context, i, list);
            this.f6671c = null;
            this.f6672d = i;
        }

        public void a(String str) {
            this.f6670b = str;
        }

        public void a(HashMap<Integer, String> map) {
            this.f6671c = map;
        }

        @Override // android.widget.ArrayAdapter
        public void setDropDownViewResource(int i) {
            super.setDropDownViewResource(i);
            this.e = i;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i).equals(-1)) {
                return a(i, view, viewGroup, this.e);
            }
            if (this.f6671c != null) {
                return b(i, view, viewGroup, this.e);
            }
            return super.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i).equals(-1)) {
                return a(i, view, viewGroup, this.f6672d);
            }
            if (this.f6671c != null) {
                return b(i, view, viewGroup, this.f6672d);
            }
            return super.getView(i, view, viewGroup);
        }

        private View a(int i, View view, ViewGroup viewGroup, int i2) {
            View viewInflate = view == null ? LayoutInflater.from(getContext()).inflate(i2, viewGroup, false) : view;
            ((TextView) viewInflate).setText(this.f6670b);
            ((TextView) viewInflate).setTextColor(RbxBirthdayPicker.this.r);
            return viewInflate;
        }

        private View b(int i, View view, ViewGroup viewGroup, int i2) {
            TextView textView = (TextView) (view == null ? LayoutInflater.from(getContext()).inflate(i2, viewGroup, false) : view);
            T item = getItem(i);
            String str = this.f6671c.get(item);
            if (item.equals(-1)) {
                textView.setText(this.f6670b);
                textView.setTextColor(RbxBirthdayPicker.this.r);
            } else if (str != null) {
                textView.setText(str);
                textView.setTextColor(RbxBirthdayPicker.this.q);
            } else {
                textView.setText(item.toString());
                textView.setTextColor(RbxBirthdayPicker.this.q);
            }
            return textView;
        }
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.roblox.client.components.RbxBirthdayPicker.SavedState.1
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
        int f6666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f6667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f6668c;

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f6666a = -1;
            this.f6667b = -1;
            this.f6668c = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6666a = -1;
            this.f6667b = -1;
            this.f6668c = -1;
            this.f6667b = parcel.readInt();
            this.f6666a = parcel.readInt();
            this.f6668c = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6667b);
            parcel.writeInt(this.f6666a);
            parcel.writeInt(this.f6668c);
        }
    }
}
