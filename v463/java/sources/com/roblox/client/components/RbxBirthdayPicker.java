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
import com.roblox.client.o;
import com.roblox.client.u;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxBirthdayPicker extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Spinner f5771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Spinner f5772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Spinner f5773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f5774e;
    private RbxTextView f;
    private RbxTextView g;
    private e h;
    private ArrayList<Integer> i;
    private ArrayList<Integer> j;
    private ArrayList<Integer> k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private HashMap<Integer, String> t;
    private HashMap<Integer, String> u;

    public RbxBirthdayPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5770a = "RbxBirthdayPicker";
        this.o = -1;
        this.p = -1;
        this.q = -1;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (u.j()) {
            LayoutInflater.from(context).inflate(o.g.rbx_birthday_picker_phone, (ViewGroup) getRootView());
        } else {
            LayoutInflater.from(context).inflate(o.g.rbx_birthday_picker, (ViewGroup) getRootView());
        }
        this.f5771b = (Spinner) findViewById(o.f.rbxBirthdayDaySpinner);
        this.f5772c = (Spinner) findViewById(o.f.rbxBirthdayMonthSpinner);
        this.f5773d = (Spinner) findViewById(o.f.rbxBirthdayYearSpinner);
        this.f5774e = (LinearLayout) findViewById(o.f.rbxBirthdayContainer);
        this.f = (RbxTextView) findViewById(o.f.rbxBirthdayBottomText);
        this.g = (RbxTextView) findViewById(o.f.rbxBirthdayText);
        this.r = getResources().getColor(o.c.RbxGray2);
        this.s = getResources().getColor(o.c.RbxTextLight);
        this.f5771b.setContentDescription(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Description_BirthdayDaySpinnerContentDesc, new Object[0]));
        this.f5772c.setContentDescription(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Description_BirthdayMonthSpinnerContentDesc, new Object[0]));
        this.f5773d.setContentDescription(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Description_BirthdayYearSpinnerContentDesc, new Object[0]));
        this.g.setText(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Birthday, new Object[0]));
        this.f.setText(com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_InvalidBirthday, new Object[0]));
        this.t = new HashMap<>();
        String[] strArr = {com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthJanuary, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthFebruary, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthMarch, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthApril, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthMay, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthJune, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthJuly, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthAugust, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthSeptember, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthOctober, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthNovember, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_MonthDecember, new Object[0])};
        int i = 0;
        for (int i2 = 12; i < i2; i2 = 12) {
            this.t.put(Integer.valueOf(i), strArr[i]);
            i++;
        }
        Calendar calendar = Calendar.getInstance();
        this.l = calendar.get(1);
        this.m = calendar.get(2);
        this.n = calendar.get(5);
        this.u = new HashMap<>();
        String[] strArr2 = {com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date1, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date2, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date3, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date4, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date5, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date6, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date7, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date8, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date9, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date10, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date11, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date12, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date13, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date14, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date15, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date16, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date17, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date18, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date19, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date20, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date21, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date22, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date23, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date24, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date25, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date26, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date27, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date28, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date29, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date30, new Object[0]), com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_Date31, new Object[0])};
        this.i = new ArrayList<>();
        for (int i3 = 1; i3 <= 31; i3++) {
            this.i.add(Integer.valueOf(i3));
        }
        for (int i4 = 1; i4 <= 31; i4++) {
            this.u.put(Integer.valueOf(i4), strArr2[i4 - 1]);
        }
        this.j = getYearList();
        this.k = getMonthList();
        if (isInEditMode()) {
            return;
        }
        ArrayList<Integer> dayList = getDayList();
        dayList.add(0, -1);
        ArrayList<Integer> yearList = getYearList();
        yearList.add(0, -1);
        ArrayList<Integer> monthList = getMonthList();
        monthList.add(0, -1);
        setDaySpinner(dayList);
        setYearSpinner(yearList);
        setMonthSpinner(monthList);
        this.f5771b.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                boolean zE = RbxBirthdayPicker.this.e();
                if (RbxBirthdayPicker.this.h == null || !zE) {
                    return;
                }
                RbxBirthdayPicker.this.h.a(0, RbxBirthdayPicker.this.o);
            }
        });
        this.f5772c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                boolean zF = RbxBirthdayPicker.this.f();
                if (RbxBirthdayPicker.this.h == null || !zF) {
                    return;
                }
                RbxBirthdayPicker.this.h.a(1, RbxBirthdayPicker.this.p);
            }
        });
        this.f5773d.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                boolean zG = RbxBirthdayPicker.this.g();
                if (RbxBirthdayPicker.this.h == null || !zG) {
                    return;
                }
                RbxBirthdayPicker.this.h.a(2, RbxBirthdayPicker.this.q);
            }
        });
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5780b = this.p;
        savedState.f5779a = this.o;
        savedState.f5781c = this.q;
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
        a(savedState.f5780b, savedState.f5779a, savedState.f5781c);
    }

    public void a(int i, int i2, int i3) {
        this.q = i3;
        i();
        this.p = i;
        j();
        this.o = i2;
        h();
    }

    public int getDay() {
        return ((Integer) this.f5771b.getSelectedItem()).intValue();
    }

    public int getMonth() {
        return ((Integer) this.f5772c.getSelectedItem()).intValue();
    }

    public int getYear() {
        return ((Integer) this.f5773d.getSelectedItem()).intValue();
    }

    public void setTitle(String str) {
        this.g.setText(str);
        if (str == null || str.length() == 0) {
            this.g.setVisibility(8);
        } else {
            this.g.setVisibility(0);
        }
    }

    public void setTitleColor(int i) {
        this.g.setTextColor(i);
    }

    public void a() {
        this.f5774e.setBackgroundResource(o.e.rbx_bg_gender_full_error);
        if (this.f.getVisibility() != 0) {
            g.a(this.f, 0, 0.0f, 1.0f, 200L);
        }
    }

    public void b() {
        this.f5774e.setBackgroundResource(o.e.rbx_bg_gender_full_success);
        this.f.setVisibility(4);
    }

    public void setRbxDateChangedListener(e eVar) {
        this.h = eVar;
    }

    public e getRbxDateChangedListener() {
        return this.h;
    }

    public void c() {
        startAnimation(g.a(this));
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.roblox.client.components.RbxBirthdayPicker.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };
        this.f5771b.setOnTouchListener(onTouchListener);
        this.f5772c.setOnTouchListener(onTouchListener);
        this.f5773d.setOnTouchListener(onTouchListener);
    }

    public void d() {
        startAnimation(g.b(this));
        this.f5771b.setOnTouchListener(null);
        this.f5772c.setOnTouchListener(null);
        this.f5773d.setOnTouchListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        int i = this.o;
        this.o = ((Integer) this.f5771b.getSelectedItem()).intValue();
        if (((Integer) this.f5771b.getItemAtPosition(0)).intValue() == -1 && this.o != -1) {
            h();
        }
        return i != this.o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        int i = this.p;
        this.p = ((Integer) this.f5772c.getSelectedItem()).intValue();
        h();
        if (((Integer) this.f5772c.getItemAtPosition(0)).intValue() == -1 && this.p != -1) {
            j();
        }
        return i != this.p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        int i = this.q;
        this.q = ((Integer) this.f5773d.getSelectedItem()).intValue();
        j();
        if (((Integer) this.f5773d.getItemAtPosition(0)).intValue() == -1 && this.q != -1) {
            i();
        }
        return i != this.q;
    }

    private void h() {
        ArrayList<Integer> dayList = getDayList();
        if (this.o == -1) {
            dayList.add(0, -1);
        }
        int size = dayList.size() - 1;
        int iIntValue = dayList.get(size).intValue();
        int iIndexOf = dayList.indexOf(Integer.valueOf(this.o));
        setDaySpinner(dayList);
        if (this.o > iIntValue) {
            this.f5771b.setSelection(size);
        } else if (iIndexOf == -1) {
            this.f5771b.setSelection(0);
        } else {
            this.f5771b.setSelection(iIndexOf);
        }
    }

    private void i() {
        int iIndexOf = this.j.indexOf(Integer.valueOf(this.q));
        setYearSpinner(this.j);
        if (iIndexOf == -1) {
            this.f5773d.setSelection(0);
        } else {
            this.f5773d.setSelection(iIndexOf);
        }
    }

    private void j() {
        List<Integer> listSubList;
        if (this.p == -1) {
            if (this.q == this.l) {
                listSubList = new ArrayList<>(this.k.subList(0, this.m + 1));
            } else {
                listSubList = getMonthList();
            }
            listSubList.add(0, -1);
        } else if (this.q == this.l) {
            listSubList = this.k.subList(0, this.m + 1);
        } else {
            listSubList = this.k;
        }
        int size = listSubList.size() - 1;
        int iIntValue = listSubList.get(size).intValue();
        int iIndexOf = listSubList.indexOf(Integer.valueOf(this.p));
        setMonthSpinner(listSubList);
        if (this.p > iIntValue) {
            this.f5772c.setSelection(size);
        } else if (iIndexOf == -1) {
            this.f5772c.setSelection(0);
        } else {
            this.f5772c.setSelection(iIndexOf);
        }
    }

    private ArrayList<Integer> getDayList() {
        int iA;
        int i = this.p;
        if (i == -1) {
            iA = 31;
        } else if (this.l == this.q && this.m == i) {
            iA = this.n;
        } else {
            iA = a(this.p, this.q);
        }
        return new ArrayList<>(this.i.subList(0, iA));
    }

    private ArrayList<Integer> getYearList() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = this.l; i >= this.l - 100; i--) {
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
        a aVar = new a(getContext(), o.g.rbx_spinner_top, list);
        aVar.setDropDownViewResource(o.g.rbx_spinner_item);
        aVar.a("--");
        aVar.a(this.u);
        this.f5771b.setAdapter((SpinnerAdapter) aVar);
    }

    private void setMonthSpinner(List<Integer> list) {
        a aVar = new a(getContext(), o.g.rbx_spinner_top, list);
        aVar.setDropDownViewResource(o.g.rbx_spinner_item);
        aVar.a("--");
        aVar.a(this.t);
        this.f5772c.setAdapter((SpinnerAdapter) aVar);
    }

    private void setYearSpinner(List<Integer> list) {
        a aVar = new a(getContext(), o.g.rbx_spinner_top, list);
        aVar.setDropDownViewResource(o.g.rbx_spinner_item);
        aVar.a("----");
        this.f5773d.setAdapter((SpinnerAdapter) aVar);
    }

    private int a(int i, int i2) {
        return i == 1 ? (i2 != -1 && new GregorianCalendar().isLeapYear(i2)) ? 29 : 28 : (i == 3 || i == 5 || i == 8 || i == 10) ? 30 : 31;
    }

    private class a<T> extends ArrayAdapter<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f5783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private HashMap<Integer, String> f5784c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f5785d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f5786e;

        public a(Context context, int i, List<T> list) {
            super(context, i, list);
            this.f5784c = null;
            this.f5785d = i;
        }

        public void a(String str) {
            this.f5783b = str;
        }

        public void a(HashMap<Integer, String> map) {
            this.f5784c = map;
        }

        @Override // android.widget.ArrayAdapter
        public void setDropDownViewResource(int i) {
            super.setDropDownViewResource(i);
            this.f5786e = i;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i).equals(-1)) {
                return a(i, view, viewGroup, this.f5786e);
            }
            if (this.f5784c != null) {
                return c(i, view, viewGroup, this.f5786e);
            }
            return super.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i).equals(-1)) {
                return b(i, view, viewGroup, this.f5785d);
            }
            if (this.f5784c != null) {
                return c(i, view, viewGroup, this.f5785d);
            }
            return super.getView(i, view, viewGroup);
        }

        private View a(int i, View view, ViewGroup viewGroup, int i2) {
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(i2, viewGroup, false);
            }
            ((TextView) view).setText(this.f5783b);
            return view;
        }

        private View b(int i, View view, ViewGroup viewGroup, int i2) {
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(i2, viewGroup, false);
            }
            TextView textView = (TextView) view;
            textView.setText(this.f5783b);
            textView.setTextColor(RbxBirthdayPicker.this.s);
            return view;
        }

        private View c(int i, View view, ViewGroup viewGroup, int i2) {
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(i2, viewGroup, false);
            }
            TextView textView = (TextView) view;
            T item = getItem(i);
            String str = this.f5784c.get(item);
            if (item.equals(-1)) {
                textView.setText(this.f5783b);
                textView.setTextColor(RbxBirthdayPicker.this.s);
            } else if (str != null) {
                textView.setText(str);
                textView.setTextColor(RbxBirthdayPicker.this.r);
            } else {
                textView.setText(item.toString());
                textView.setTextColor(RbxBirthdayPicker.this.r);
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
        int f5779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f5780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f5781c;

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f5779a = -1;
            this.f5780b = -1;
            this.f5781c = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f5779a = -1;
            this.f5780b = -1;
            this.f5781c = -1;
            this.f5780b = parcel.readInt();
            this.f5779a = parcel.readInt();
            this.f5781c = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5780b);
            parcel.writeInt(this.f5779a);
            parcel.writeInt(this.f5781c);
        }
    }
}
