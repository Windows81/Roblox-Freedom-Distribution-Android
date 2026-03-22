package android.support.v7.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.s;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.a.a;
import android.support.v7.widget.LinearLayoutCompat;
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
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class AlertController {
    private CharSequence B;
    private CharSequence C;
    private CharSequence D;
    private Drawable F;
    private ImageView G;
    private TextView H;
    private TextView I;
    private View J;
    private int K;
    private int L;
    private boolean M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final l f1190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ListView f1191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Button f1192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Message f1193d;
    Button e;
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
    private CharSequence s;
    private CharSequence t;
    private View u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;
    private boolean A = false;
    private int E = 0;
    int k = -1;
    private int N = 0;
    private final View.OnClickListener O = new View.OnClickListener() { // from class: android.support.v7.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            if (view == AlertController.this.f1192c && AlertController.this.f1193d != null) {
                messageObtain = Message.obtain(AlertController.this.f1193d);
            } else if (view == AlertController.this.e && AlertController.this.f != null) {
                messageObtain = Message.obtain(AlertController.this.f);
            } else if (view == AlertController.this.g && AlertController.this.h != null) {
                messageObtain = Message.obtain(AlertController.this.h);
            } else {
                messageObtain = null;
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController.this.p.obtainMessage(1, AlertController.this.f1190a).sendToTarget();
        }
    };

    private static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<DialogInterface> f1224a;

        public b(DialogInterface dialogInterface) {
            this.f1224a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick(this.f1224a.get(), message.what);
                    break;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    break;
            }
        }
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0032a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public AlertController(Context context, l lVar, Window window) {
        this.q = context;
        this.f1190a = lVar;
        this.r = window;
        this.p = new b(lVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.j.AlertDialog, a.C0032a.alertDialogStyle, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_android_layout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_buttonPanelSideLayout, 0);
        this.l = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_listLayout, 0);
        this.m = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_multiChoiceItemLayout, 0);
        this.n = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_singleChoiceItemLayout, 0);
        this.o = typedArrayObtainStyledAttributes.getResourceId(a.j.AlertDialog_listItemLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getBoolean(a.j.AlertDialog_showTitle, true);
        typedArrayObtainStyledAttributes.recycle();
        lVar.b(1);
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
        this.f1190a.setContentView(b());
        c();
    }

    private int b() {
        if (this.L == 0) {
            return this.K;
        }
        if (this.N == 1) {
            return this.L;
        }
        return this.K;
    }

    public void a(CharSequence charSequence) {
        this.s = charSequence;
        if (this.H != null) {
            this.H.setText(charSequence);
        }
    }

    public void b(View view) {
        this.J = view;
    }

    public void b(CharSequence charSequence) {
        this.t = charSequence;
        if (this.I != null) {
            this.I.setText(charSequence);
        }
    }

    public void a(int i) {
        this.u = null;
        this.v = i;
        this.A = false;
    }

    public void c(View view) {
        this.u = view;
        this.v = 0;
        this.A = false;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.u = view;
        this.v = 0;
        this.A = true;
        this.w = i;
        this.x = i2;
        this.y = i3;
        this.z = i4;
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.p.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.D = charSequence;
                this.h = message;
                return;
            case -2:
                this.C = charSequence;
                this.f = message;
                return;
            case -1:
                this.B = charSequence;
                this.f1193d = message;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void b(int i) {
        this.F = null;
        this.E = i;
        if (this.G != null) {
            if (i != 0) {
                this.G.setVisibility(0);
                this.G.setImageResource(this.E);
            } else {
                this.G.setVisibility(8);
            }
        }
    }

    public void a(Drawable drawable) {
        this.F = drawable;
        this.E = 0;
        if (this.G != null) {
            if (drawable != null) {
                this.G.setVisibility(0);
                this.G.setImageDrawable(drawable);
            } else {
                this.G.setVisibility(8);
            }
        }
    }

    public int c(int i) {
        TypedValue typedValue = new TypedValue();
        this.q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public Button d(int i) {
        switch (i) {
            case -3:
                return this.g;
            case -2:
                return this.e;
            case -1:
                return this.f1192c;
            default:
                return null;
        }
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return this.i != null && this.i.a(keyEvent);
    }

    public boolean b(int i, KeyEvent keyEvent) {
        return this.i != null && this.i.a(keyEvent);
    }

    private ViewGroup a(View view, View view2) {
        if (view == null) {
            return (ViewGroup) (view2 instanceof ViewStub ? ((ViewStub) view2).inflate() : view2);
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        return (ViewGroup) (view instanceof ViewStub ? ((ViewStub) view).inflate() : view);
    }

    private void c() {
        View viewFindViewById;
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
        boolean z2 = (viewGroupA == null || viewGroupA.getVisibility() == 8) ? false : true;
        boolean z3 = (viewGroupA3 == null || viewGroupA3.getVisibility() == 8) ? false : true;
        if (!z3 && viewGroupA2 != null && (viewFindViewById2 = viewGroupA2.findViewById(a.f.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z2) {
            if (this.i != null) {
                this.i.setClipToPadding(true);
            }
            View viewFindViewById10 = null;
            if (this.t != null || this.f1191b != null) {
                viewFindViewById10 = viewGroupA.findViewById(a.f.titleDividerNoCustom);
            }
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupA2 != null && (viewFindViewById = viewGroupA2.findViewById(a.f.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (this.f1191b instanceof RecycleListView) {
            ((RecycleListView) this.f1191b).a(z2, z3);
        }
        if (!z) {
            View view = this.f1191b != null ? this.f1191b : this.i;
            if (view != null) {
                a(viewGroupA2, view, (z3 ? 2 : 0) | (z2 ? 1 : 0), 3);
            }
        }
        ListView listView = this.f1191b;
        if (listView != null && this.j != null) {
            listView.setAdapter(this.j);
            int i = this.k;
            if (i > -1) {
                listView.setItemChecked(i, true);
                listView.setSelection(i);
            }
        }
    }

    private void a(ViewGroup viewGroup, View view, int i, int i2) {
        final View view2 = null;
        final View viewFindViewById = this.r.findViewById(a.f.scrollIndicatorUp);
        View viewFindViewById2 = this.r.findViewById(a.f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            s.a(view, i, i2);
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
        if (viewFindViewById2 == null || (i & 2) != 0) {
            view2 = viewFindViewById2;
        } else {
            viewGroup.removeView(viewFindViewById2);
        }
        if (viewFindViewById != null || view2 != null) {
            if (this.t != null) {
                this.i.setOnScrollChangeListener(new NestedScrollView.b() { // from class: android.support.v7.app.AlertController.2
                    @Override // android.support.v4.widget.NestedScrollView.b
                    public void a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                        AlertController.a(nestedScrollView, viewFindViewById, view2);
                    }
                });
                this.i.post(new Runnable() { // from class: android.support.v7.app.AlertController.3
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.a(AlertController.this.i, viewFindViewById, view2);
                    }
                });
            } else {
                if (this.f1191b != null) {
                    this.f1191b.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: android.support.v7.app.AlertController.4
                        @Override // android.widget.AbsListView.OnScrollListener
                        public void onScrollStateChanged(AbsListView absListView, int i3) {
                        }

                        @Override // android.widget.AbsListView.OnScrollListener
                        public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                            AlertController.a(absListView, viewFindViewById, view2);
                        }
                    });
                    this.f1191b.post(new Runnable() { // from class: android.support.v7.app.AlertController.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AlertController.a(AlertController.this.f1191b, viewFindViewById, view2);
                        }
                    });
                    return;
                }
                if (viewFindViewById != null) {
                    viewGroup.removeView(viewFindViewById);
                }
                if (view2 != null) {
                    viewGroup.removeView(view2);
                }
            }
        }
    }

    private void a(ViewGroup viewGroup) {
        View viewInflate;
        if (this.u != null) {
            viewInflate = this.u;
        } else if (this.v != 0) {
            viewInflate = LayoutInflater.from(this.q).inflate(this.v, viewGroup, false);
        } else {
            viewInflate = null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            this.r.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.r.findViewById(a.f.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.A) {
                frameLayout.setPadding(this.w, this.x, this.y, this.z);
            }
            if (this.f1191b != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void b(ViewGroup viewGroup) {
        if (this.J != null) {
            viewGroup.addView(this.J, 0, new ViewGroup.LayoutParams(-1, -2));
            this.r.findViewById(a.f.title_template).setVisibility(8);
            return;
        }
        this.G = (ImageView) this.r.findViewById(R.id.icon);
        if ((!TextUtils.isEmpty(this.s)) && this.M) {
            this.H = (TextView) this.r.findViewById(a.f.alertTitle);
            this.H.setText(this.s);
            if (this.E != 0) {
                this.G.setImageResource(this.E);
                return;
            } else if (this.F != null) {
                this.G.setImageDrawable(this.F);
                return;
            } else {
                this.H.setPadding(this.G.getPaddingLeft(), this.G.getPaddingTop(), this.G.getPaddingRight(), this.G.getPaddingBottom());
                this.G.setVisibility(8);
                return;
            }
        }
        this.r.findViewById(a.f.title_template).setVisibility(8);
        this.G.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    private void c(ViewGroup viewGroup) {
        this.i = (NestedScrollView) this.r.findViewById(a.f.scrollView);
        this.i.setFocusable(false);
        this.i.setNestedScrollingEnabled(false);
        this.I = (TextView) viewGroup.findViewById(R.id.message);
        if (this.I != null) {
            if (this.t != null) {
                this.I.setText(this.t);
                return;
            }
            this.I.setVisibility(8);
            this.i.removeView(this.I);
            if (this.f1191b != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.i.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(this.i);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(this.f1191b, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
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
        this.f1192c = (Button) viewGroup.findViewById(R.id.button1);
        this.f1192c.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.B)) {
            this.f1192c.setVisibility(8);
            i = 0;
        } else {
            this.f1192c.setText(this.B);
            this.f1192c.setVisibility(0);
            i = 1;
        }
        this.e = (Button) viewGroup.findViewById(R.id.button2);
        this.e.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.C)) {
            this.e.setVisibility(8);
        } else {
            this.e.setText(this.C);
            this.e.setVisibility(0);
            i |= 2;
        }
        this.g = (Button) viewGroup.findViewById(R.id.button3);
        this.g.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.D)) {
            this.g.setVisibility(8);
        } else {
            this.g.setText(this.D);
            this.g.setVisibility(0);
            i |= 4;
        }
        if (a(this.q)) {
            if (i == 1) {
                a(this.f1192c);
            } else if (i == 2) {
                a(this.e);
            } else if (i == 4) {
                a(this.g);
            }
        }
        if (!(i != 0)) {
            viewGroup.setVisibility(8);
        }
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1208b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.RecycleListView);
            this.f1208b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingBottomNoButtons, -1);
            this.f1207a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f1207a, getPaddingRight(), z2 ? getPaddingBottom() : this.f1208b);
            }
        }
    }

    public static class a {
        public int A;
        public boolean[] C;
        public boolean D;
        public boolean E;
        public DialogInterface.OnMultiChoiceClickListener G;
        public Cursor H;
        public String I;
        public String J;
        public AdapterView.OnItemSelectedListener K;
        public InterfaceC0033a L;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f1209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f1210b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f1212d;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public DialogInterface.OnClickListener j;
        public CharSequence k;
        public DialogInterface.OnClickListener l;
        public CharSequence m;
        public DialogInterface.OnClickListener n;
        public DialogInterface.OnCancelListener p;
        public DialogInterface.OnDismissListener q;
        public DialogInterface.OnKeyListener r;
        public CharSequence[] s;
        public ListAdapter t;
        public DialogInterface.OnClickListener u;
        public int v;
        public View w;
        public int x;
        public int y;
        public int z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1211c = 0;
        public int e = 0;
        public boolean B = false;
        public int F = -1;
        public boolean M = true;
        public boolean o = true;

        /* JADX INFO: renamed from: android.support.v7.app.AlertController$a$a, reason: collision with other inner class name */
        public interface InterfaceC0033a {
            void a(ListView listView);
        }

        public a(Context context) {
            this.f1209a = context;
            this.f1210b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(AlertController alertController) {
            if (this.g != null) {
                alertController.b(this.g);
            } else {
                if (this.f != null) {
                    alertController.a(this.f);
                }
                if (this.f1212d != null) {
                    alertController.a(this.f1212d);
                }
                if (this.f1211c != 0) {
                    alertController.b(this.f1211c);
                }
                if (this.e != 0) {
                    alertController.b(alertController.c(this.e));
                }
            }
            if (this.h != null) {
                alertController.b(this.h);
            }
            if (this.i != null) {
                alertController.a(-1, this.i, this.j, (Message) null);
            }
            if (this.k != null) {
                alertController.a(-2, this.k, this.l, (Message) null);
            }
            if (this.m != null) {
                alertController.a(-3, this.m, this.n, (Message) null);
            }
            if (this.s != null || this.H != null || this.t != null) {
                b(alertController);
            }
            if (this.w != null) {
                if (this.B) {
                    alertController.a(this.w, this.x, this.y, this.z, this.A);
                    return;
                } else {
                    alertController.c(this.w);
                    return;
                }
            }
            if (this.v != 0) {
                alertController.a(this.v);
            }
        }

        private void b(final AlertController alertController) {
            int i;
            ListAdapter cVar;
            int i2 = R.id.text1;
            boolean z = false;
            final RecycleListView recycleListView = (RecycleListView) this.f1210b.inflate(alertController.l, (ViewGroup) null);
            if (this.D) {
                if (this.H == null) {
                    cVar = new ArrayAdapter<CharSequence>(this.f1209a, alertController.m, i2, this.s) { // from class: android.support.v7.app.AlertController.a.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i3, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i3, view, viewGroup);
                            if (a.this.C != null && a.this.C[i3]) {
                                recycleListView.setItemChecked(i3, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    cVar = new CursorAdapter(this.f1209a, this.H, z) { // from class: android.support.v7.app.AlertController.a.2

                        /* JADX INFO: renamed from: d, reason: collision with root package name */
                        private final int f1218d;
                        private final int e;

                        {
                            Cursor cursor = getCursor();
                            this.f1218d = cursor.getColumnIndexOrThrow(a.this.I);
                            this.e = cursor.getColumnIndexOrThrow(a.this.J);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f1218d));
                            recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.e) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return a.this.f1210b.inflate(alertController.m, viewGroup, false);
                        }
                    };
                }
            } else {
                if (this.E) {
                    i = alertController.n;
                } else {
                    i = alertController.o;
                }
                if (this.H != null) {
                    cVar = new SimpleCursorAdapter(this.f1209a, i, this.H, new String[]{this.I}, new int[]{R.id.text1});
                } else if (this.t != null) {
                    cVar = this.t;
                } else {
                    cVar = new c(this.f1209a, i, R.id.text1, this.s);
                }
            }
            if (this.L != null) {
                this.L.a(recycleListView);
            }
            alertController.j = cVar;
            alertController.k = this.F;
            if (this.u != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        a.this.u.onClick(alertController.f1190a, i3);
                        if (!a.this.E) {
                            alertController.f1190a.dismiss();
                        }
                    }
                });
            } else if (this.G != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                        if (a.this.C != null) {
                            a.this.C[i3] = recycleListView.isItemChecked(i3);
                        }
                        a.this.G.onClick(alertController.f1190a, i3, recycleListView.isItemChecked(i3));
                    }
                });
            }
            if (this.K != null) {
                recycleListView.setOnItemSelectedListener(this.K);
            }
            if (this.E) {
                recycleListView.setChoiceMode(1);
            } else if (this.D) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f1191b = recycleListView;
        }
    }

    private static class c extends ArrayAdapter<CharSequence> {
        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }
    }
}
