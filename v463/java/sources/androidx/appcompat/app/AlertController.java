package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.h.r;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class AlertController {
    private int A;
    private CharSequence C;
    private Drawable D;
    private CharSequence E;
    private Drawable F;
    private CharSequence G;
    private Drawable H;
    private Drawable J;
    private ImageView K;
    private TextView L;
    private TextView M;
    private View N;
    private int O;
    private int P;
    private boolean Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final g f588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ListView f589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Button f590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Message f591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Button f592e;
    Message f;
    Button g;
    Message h;
    NestedScrollView i;
    ListAdapter j;
    int l;
    int m;
    int n;
    int o;
    Handler p;
    private final Context q;
    private final Window r;
    private final int s;
    private CharSequence t;
    private CharSequence u;
    private View v;
    private int w;
    private int x;
    private int y;
    private int z;
    private boolean B = false;
    private int I = 0;
    int k = -1;
    private int R = 0;
    private final View.OnClickListener S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            if (view == AlertController.this.f590c && AlertController.this.f591d != null) {
                messageObtain = Message.obtain(AlertController.this.f591d);
            } else if (view == AlertController.this.f592e && AlertController.this.f != null) {
                messageObtain = Message.obtain(AlertController.this.f);
            } else {
                messageObtain = (view != AlertController.this.g || AlertController.this.h == null) ? null : Message.obtain(AlertController.this.h);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController.this.p.obtainMessage(1, AlertController.this.f588a).sendToTarget();
        }
    };

    private static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<DialogInterface> f625a;

        public b(DialogInterface dialogInterface) {
            this.f625a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f625a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0012a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public AlertController(Context context, g gVar, Window window) {
        this.q = context;
        this.f588a = gVar;
        this.r = window;
        this.p = new b(gVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.j.AlertDialog, a.C0012a.alertDialogStyle, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_android_layout, 0);
        this.P = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_buttonPanelSideLayout, 0);
        this.l = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_listLayout, 0);
        this.m = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_multiChoiceItemLayout, 0);
        this.n = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_singleChoiceItemLayout, 0);
        this.o = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_listItemLayout, 0);
        this.Q = typedArrayObtainStyledAttributes.getBoolean(a.j.AlertDialog_showTitle, true);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        gVar.b(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.f588a.setContentView(b());
        c();
    }

    private int b() {
        int i = this.P;
        if (i == 0) {
            return this.O;
        }
        return this.R == 1 ? i : this.O;
    }

    public void a(CharSequence charSequence) {
        this.t = charSequence;
        TextView textView = this.L;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void b(View view) {
        this.N = view;
    }

    public void b(CharSequence charSequence) {
        this.u = charSequence;
        TextView textView = this.M;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void a(int i) {
        this.v = null;
        this.w = i;
        this.B = false;
    }

    public void c(View view) {
        this.v = view;
        this.w = 0;
        this.B = false;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.v = view;
        this.w = 0;
        this.B = true;
        this.x = i;
        this.y = i2;
        this.z = i3;
        this.A = i4;
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.p.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.G = charSequence;
            this.h = message;
            this.H = drawable;
        } else if (i == -2) {
            this.E = charSequence;
            this.f = message;
            this.F = drawable;
        } else {
            if (i == -1) {
                this.C = charSequence;
                this.f591d = message;
                this.D = drawable;
                return;
            }
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void b(int i) {
        this.J = null;
        this.I = i;
        ImageView imageView = this.K;
        if (imageView != null) {
            if (i != 0) {
                imageView.setVisibility(0);
                this.K.setImageResource(this.I);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void a(Drawable drawable) {
        this.J = drawable;
        this.I = 0;
        ImageView imageView = this.K;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.K.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public int c(int i) {
        TypedValue typedValue = new TypedValue();
        this.q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public Button d(int i) {
        if (i == -3) {
            return this.g;
        }
        if (i == -2) {
            return this.f592e;
        }
        if (i != -1) {
            return null;
        }
        return this.f590c;
    }

    public boolean a(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.i;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    public boolean b(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.i;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    private ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.r.findViewById(a.f.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(a.f.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(a.f.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(a.f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(a.f.customPanel);
        a(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(a.f.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(a.f.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(a.f.buttonPanel);
        ViewGroup viewGroupA = a(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupA2 = a(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupA3 = a(viewFindViewById9, viewFindViewById6);
        c(viewGroupA2);
        d(viewGroupA3);
        b(viewGroupA);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (viewGroupA == null || viewGroupA.getVisibility() == 8) ? 0 : 1;
        boolean z3 = (viewGroupA3 == null || viewGroupA3.getVisibility() == 8) ? false : true;
        if (!z3 && viewGroupA2 != null && (viewFindViewById2 = viewGroupA2.findViewById(a.f.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z2 != 0) {
            NestedScrollView nestedScrollView = this.i;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.u == null && this.f589b == null) ? null : viewGroupA.findViewById(a.f.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupA2 != null && (viewFindViewById = viewGroupA2.findViewById(a.f.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f589b;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z2, z3);
        }
        if (!z) {
            View view = this.f589b;
            if (view == null) {
                view = this.i;
            }
            if (view != null) {
                a(viewGroupA2, view, z2 | (z3 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f589b;
        if (listView2 == null || (listAdapter = this.j) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i = this.k;
        if (i > -1) {
            listView2.setItemChecked(i, true);
            listView2.setSelection(i);
        }
    }

    private void a(ViewGroup viewGroup, View view, int i, int i2) {
        final View viewFindViewById = this.r.findViewById(a.f.scrollIndicatorUp);
        final View viewFindViewById2 = this.r.findViewById(a.f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            r.a(view, i, i2);
            if (viewFindViewById != null) {
                viewGroup.removeView(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                viewGroup.removeView(viewFindViewById2);
                return;
            }
            return;
        }
        if (viewFindViewById != null && (i & 1) == 0) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById2 != null && (i & 2) == 0) {
            viewGroup.removeView(viewFindViewById2);
            viewFindViewById2 = null;
        }
        if (viewFindViewById == null && viewFindViewById2 == null) {
            return;
        }
        if (this.u != null) {
            this.i.setOnScrollChangeListener(new NestedScrollView.b() { // from class: androidx.appcompat.app.AlertController.2
                @Override // androidx.core.widget.NestedScrollView.b
                public void a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                    AlertController.a(nestedScrollView, viewFindViewById, viewFindViewById2);
                }
            });
            this.i.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.a(AlertController.this.i, viewFindViewById, viewFindViewById2);
                }
            });
            return;
        }
        ListView listView = this.f589b;
        if (listView != null) {
            listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i3) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                    AlertController.a(absListView, viewFindViewById, viewFindViewById2);
                }
            });
            this.f589b.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.a(AlertController.this.f589b, viewFindViewById, viewFindViewById2);
                }
            });
            return;
        }
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void a(ViewGroup viewGroup) {
        View viewInflate = this.v;
        if (viewInflate == null) {
            viewInflate = this.w != 0 ? LayoutInflater.from(this.q).inflate(this.w, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            this.r.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.r.findViewById(a.f.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.B) {
                frameLayout.setPadding(this.x, this.y, this.z, this.A);
            }
            if (this.f589b != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void b(ViewGroup viewGroup) {
        if (this.N != null) {
            viewGroup.addView(this.N, 0, new ViewGroup.LayoutParams(-1, -2));
            this.r.findViewById(a.f.title_template).setVisibility(8);
            return;
        }
        this.K = (ImageView) this.r.findViewById(R.id.icon);
        if ((!TextUtils.isEmpty(this.t)) && this.Q) {
            TextView textView = (TextView) this.r.findViewById(a.f.alertTitle);
            this.L = textView;
            textView.setText(this.t);
            int i = this.I;
            if (i != 0) {
                this.K.setImageResource(i);
                return;
            }
            Drawable drawable = this.J;
            if (drawable != null) {
                this.K.setImageDrawable(drawable);
                return;
            } else {
                this.L.setPadding(this.K.getPaddingLeft(), this.K.getPaddingTop(), this.K.getPaddingRight(), this.K.getPaddingBottom());
                this.K.setVisibility(8);
                return;
            }
        }
        this.r.findViewById(a.f.title_template).setVisibility(8);
        this.K.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    private void c(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.r.findViewById(a.f.scrollView);
        this.i = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.i.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.M = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.u;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.i.removeView(this.M);
        if (this.f589b != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.i.getParent();
            int iIndexOfChild = viewGroup2.indexOfChild(this.i);
            viewGroup2.removeViewAt(iIndexOfChild);
            viewGroup2.addView(this.f589b, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        viewGroup.setVisibility(8);
    }

    static void a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private void d(ViewGroup viewGroup) {
        int i;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f590c = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.C) && this.D == null) {
            this.f590c.setVisibility(8);
            i = 0;
        } else {
            this.f590c.setText(this.C);
            Drawable drawable = this.D;
            if (drawable != null) {
                int i2 = this.s;
                drawable.setBounds(0, 0, i2, i2);
                this.f590c.setCompoundDrawables(this.D, null, null, null);
            }
            this.f590c.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f592e = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.E) && this.F == null) {
            this.f592e.setVisibility(8);
        } else {
            this.f592e.setText(this.E);
            Drawable drawable2 = this.F;
            if (drawable2 != null) {
                int i3 = this.s;
                drawable2.setBounds(0, 0, i3, i3);
                this.f592e.setCompoundDrawables(this.F, null, null, null);
            }
            this.f592e.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.g = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.G) && this.H == null) {
            this.g.setVisibility(8);
        } else {
            this.g.setText(this.G);
            Drawable drawable3 = this.D;
            if (drawable3 != null) {
                int i4 = this.s;
                drawable3.setBounds(0, 0, i4, i4);
                this.f590c.setCompoundDrawables(this.D, null, null, null);
            }
            this.g.setVisibility(0);
            i |= 4;
        }
        if (a(this.q)) {
            if (i == 1) {
                a(this.f590c);
            } else if (i == 2) {
                a(this.f592e);
            } else if (i == 4) {
                a(this.g);
            }
        }
        if (i != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f607b;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.RecycleListView);
            this.f607b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingBottomNoButtons, -1);
            this.f606a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f606a, getPaddingRight(), z2 ? getPaddingBottom() : this.f607b);
        }
    }

    public static class a {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;
        public InterfaceC0014a O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f609b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f611d;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public Drawable j;
        public DialogInterface.OnClickListener k;
        public CharSequence l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public ListAdapter w;
        public DialogInterface.OnClickListener x;
        public int y;
        public View z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f610c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f612e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean P = true;
        public boolean r = true;

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$a$a, reason: collision with other inner class name */
        public interface InterfaceC0014a {
            void a(ListView listView);
        }

        public a(Context context) {
            this.f608a = context;
            this.f609b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(AlertController alertController) {
            View view = this.g;
            if (view != null) {
                alertController.b(view);
            } else {
                CharSequence charSequence = this.f;
                if (charSequence != null) {
                    alertController.a(charSequence);
                }
                Drawable drawable = this.f611d;
                if (drawable != null) {
                    alertController.a(drawable);
                }
                int i = this.f610c;
                if (i != 0) {
                    alertController.b(i);
                }
                int i2 = this.f612e;
                if (i2 != 0) {
                    alertController.b(alertController.c(i2));
                }
            }
            CharSequence charSequence2 = this.h;
            if (charSequence2 != null) {
                alertController.b(charSequence2);
            }
            if (this.i != null || this.j != null) {
                alertController.a(-1, this.i, this.k, (Message) null, this.j);
            }
            if (this.l != null || this.m != null) {
                alertController.a(-2, this.l, this.n, (Message) null, this.m);
            }
            if (this.o != null || this.p != null) {
                alertController.a(-3, this.o, this.q, (Message) null, this.p);
            }
            if (this.v != null || this.K != null || this.w != null) {
                b(alertController);
            }
            View view2 = this.z;
            if (view2 != null) {
                if (this.E) {
                    alertController.a(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.c(view2);
                    return;
                }
            }
            int i3 = this.y;
            if (i3 != 0) {
                alertController.a(i3);
            }
        }

        private void b(final AlertController alertController) {
            int i;
            ListAdapter cVar;
            final RecycleListView recycleListView = (RecycleListView) this.f609b.inflate(alertController.l, (ViewGroup) null);
            if (this.G) {
                if (this.K == null) {
                    cVar = new ArrayAdapter<CharSequence>(this.f608a, alertController.m, R.id.text1, this.v) { // from class: androidx.appcompat.app.AlertController.a.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (a.this.F != null && a.this.F[i2]) {
                                recycleListView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    cVar = new CursorAdapter(this.f608a, this.K, false) { // from class: androidx.appcompat.app.AlertController.a.2

                        /* JADX INFO: renamed from: d, reason: collision with root package name */
                        private final int f618d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        private final int f619e;

                        {
                            Cursor cursor = getCursor();
                            this.f618d = cursor.getColumnIndexOrThrow(a.this.L);
                            this.f619e = cursor.getColumnIndexOrThrow(a.this.M);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f618d));
                            recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.f619e) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return a.this.f609b.inflate(alertController.m, viewGroup, false);
                        }
                    };
                }
            } else {
                if (this.H) {
                    i = alertController.n;
                } else {
                    i = alertController.o;
                }
                int i2 = i;
                if (this.K != null) {
                    cVar = new SimpleCursorAdapter(this.f608a, i2, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    cVar = this.w;
                    if (cVar == null) {
                        cVar = new c(this.f608a, i2, R.id.text1, this.v);
                    }
                }
            }
            InterfaceC0014a interfaceC0014a = this.O;
            if (interfaceC0014a != null) {
                interfaceC0014a.a(recycleListView);
            }
            alertController.j = cVar;
            alertController.k = this.I;
            if (this.x != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        a.this.x.onClick(alertController.f588a, i3);
                        if (a.this.H) {
                            return;
                        }
                        alertController.f588a.dismiss();
                    }
                });
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        if (a.this.F != null) {
                            a.this.F[i3] = recycleListView.isItemChecked(i3);
                        }
                        a.this.J.onClick(alertController.f588a, i3, recycleListView.isItemChecked(i3));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f589b = recycleListView;
        }
    }

    private static class c extends ArrayAdapter<CharSequence> {
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }
    }
}
