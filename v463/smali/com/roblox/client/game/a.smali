.class public Lcom/roblox/client/game/a;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/roblox/client/purchase/a;
.implements Lcom/roblox/engine/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/a$b;,
        Lcom/roblox/client/game/a$c;,
        Lcom/roblox/client/game/a$a;,
        Lcom/roblox/client/game/a$d;
    }
.end annotation


# instance fields
.field private aA:Landroid/os/Handler;

.field private aB:Lcom/roblox/engine/b;

.field private aC:Lcom/roblox/client/game/o;

.field private aD:Z

.field private aE:Lcom/roblox/client/e;

.field private aF:Lcom/roblox/client/purchase/b;

.field public final as:Ljava/lang/String;

.field private at:Lcom/roblox/client/game/a$d;

.field private au:Landroid/view/SurfaceView;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View;

.field private ax:Lcom/roblox/engine/e;

.field private ay:Lcom/roblox/engine/a/a;

.field private az:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const-string v0, "rbx.appshell"

    .line 51
    iput-object v0, p0, Lcom/roblox/client/game/a;->as:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/roblox/engine/e;

    invoke-direct {v0}, Lcom/roblox/engine/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/game/a;->ax:Lcom/roblox/engine/e;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/game/a;->aA:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/roblox/client/game/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/game/a$b;-><init>(Lcom/roblox/client/game/a;Lcom/roblox/client/game/a$1;)V

    .line 83
    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    iget-object v2, p0, Lcom/roblox/client/game/a;->aA:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;-><init>(Landroid/os/Handler;Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 84
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 86
    new-instance v0, Lcom/roblox/client/e;

    invoke-direct {v0, p0}, Lcom/roblox/client/e;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/game/a;->aE:Lcom/roblox/client/e;

    .line 88
    new-instance v0, Lcom/roblox/client/purchase/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/purchase/b;-><init>(Lcom/roblox/client/purchase/a;Z)V

    iput-object v0, p0, Lcom/roblox/client/game/a;->aF:Lcom/roblox/client/purchase/b;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/a;)Landroid/view/SurfaceView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    return-object p0
.end method

.method private as()V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "loadSettings()"

    .line 152
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/game/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/a$1;-><init>(Lcom/roblox/client/game/a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->b(Lcom/roblox/client/game/b$g;)V

    return-void
.end method

.method private at()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/roblox/client/game/a;->au()Lcom/roblox/engine/a/a$a;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/roblox/client/game/a$2;

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/roblox/client/game/a$2;-><init>(Lcom/roblox/client/game/a;Landroid/content/Context;Lcom/roblox/engine/a/a$a;)V

    iput-object v1, p0, Lcom/roblox/client/game/a;->ay:Lcom/roblox/engine/a/a;

    .line 265
    new-instance v0, Lcom/roblox/client/game/a$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/a$3;-><init>(Lcom/roblox/client/game/a;)V

    iput-object v0, p0, Lcom/roblox/client/game/a;->az:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 277
    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/a;->az:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private au()Lcom/roblox/engine/a/a$a;
    .locals 5

    .line 282
    new-instance v0, Lcom/roblox/engine/a/a$a;

    invoke-direct {v0}, Lcom/roblox/engine/a/a$a;-><init>()V

    .line 284
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->s()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$d;->mainToolbarHeight:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 288
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/roblox/engine/a/a$a;->a:I

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/game/a;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 193
    sget v0, Lcom/roblox/client/o$f;->gl_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/RbxKeyboard;

    .line 194
    invoke-virtual {p1}, Lcom/roblox/client/RbxKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 195
    invoke-virtual {p1, v0}, Lcom/roblox/client/RbxKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, v0}, Lcom/roblox/client/RbxKeyboard;->setBackgroundColor(I)V

    .line 198
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->p()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SourceSansPro-Regular.ttf"

    invoke-static {p1, v0, v1}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/roblox/client/game/l;

    invoke-direct {v0, p1}, Lcom/roblox/client/game/l;-><init>(Lcom/roblox/client/RbxKeyboard;)V

    iput-object v0, p0, Lcom/roblox/client/game/a;->aC:Lcom/roblox/client/game/o;

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/game/a;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->av:Landroid/view/View;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "initSurfaceView()"

    .line 230
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget v0, Lcom/roblox/client/o$f;->surfaceview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 234
    iget-object p1, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 236
    iget-object p1, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 238
    new-instance p1, Lcom/roblox/engine/b;

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-direct {p1, v0, v1, p0}, Lcom/roblox/engine/b;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/roblox/engine/b$a;)V

    iput-object p1, p0, Lcom/roblox/client/game/a;->aB:Lcom/roblox/engine/b;

    .line 241
    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/game/a;)Lcom/roblox/engine/a/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->ay:Lcom/roblox/engine/a/a;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/game/a;)Lcom/roblox/client/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->aE:Lcom/roblox/client/e;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/game/a;)Lcom/roblox/client/game/a$d;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->at:Lcom/roblox/client/game/a$d;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/game/a;)Lcom/roblox/client/game/o;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->aC:Lcom/roblox/client/game/o;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/game/a;)Lcom/roblox/client/purchase/b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->aF:Lcom/roblox/client/purchase/b;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/game/a;)Lcom/roblox/engine/b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/roblox/client/game/a;->aB:Lcom/roblox/engine/b;

    return-object p0
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/roblox/client/s;->F()V

    .line 172
    iget-object v0, p0, Lcom/roblox/client/game/a;->aB:Lcom/roblox/engine/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Lcom/roblox/engine/b;->a(Z)V

    .line 176
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/roblox/client/game/a;->as()V

    :cond_1
    return-void
.end method

.method public G()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/roblox/client/s;->G()V

    .line 187
    iget-object v0, p0, Lcom/roblox/client/game/a;->aB:Lcom/roblox/engine/b;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/roblox/engine/b;->a()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    .line 339
    invoke-super {p0}, Lcom/roblox/client/s;->H()V

    const-string v0, "rbx.appshell"

    const-string v1, "onDestroy()"

    .line 340
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "rbx.appshell"

    const-string v0, "onCreateView:"

    .line 118
    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget p3, Lcom/roblox/client/o$g;->fragment_appshell:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/roblox/client/game/a;->c(Landroid/view/View;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/roblox/client/game/a;->b(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcom/roblox/client/game/a;->at()V

    .line 127
    sget p2, Lcom/roblox/client/o$f;->retry_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    .line 128
    sget p3, Lcom/roblox/client/o$f;->reconnect_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/roblox/client/game/b;->e()Z

    move-result p2

    if-nez p2, :cond_0

    .line 134
    iget-object p2, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p2, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 345
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 346
    instance-of v0, p1, Lcom/roblox/client/game/a$d;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lcom/roblox/client/game/a$d;

    iput-object p1, p0, Lcom/roblox/client/game/a;->at:Lcom/roblox/client/game/a$d;

    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aq()Lcom/roblox/client/r;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/r;

    return-object v0
.end method

.method public ar()Landroid/view/Surface;
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/roblox/client/game/a;->aD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    const-string p1, "rbx.appshell"

    const-string v0, "onCreate:"

    .line 108
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/b;->a(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/game/e;->a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$a;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 295
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->E()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$f;->content_main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/game/a;->av:Landroid/view/View;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Z)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged() hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 209
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/game/b;->c()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bM()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/roblox/client/game/a;->aD:Z

    if-nez p1, :cond_2

    .line 213
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/game/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onHiddenChanged() surface not yet created - show surface"

    .line 215
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/roblox/client/game/a;->aw:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p1, "onHiddenChanged() surface not yet created - initializing"

    .line 220
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/roblox/client/game/a;->as()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/b;->a(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 332
    invoke-super {p0}, Lcom/roblox/client/s;->j()V

    const-string v0, "rbx.appshell"

    const-string v1, "onDestroyView()"

    .line 333
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/a;->az:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public j_()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/roblox/client/game/a;->aD:Z

    return v0
.end method

.method public o()F
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/roblox/client/game/a;->ax:Lcom/roblox/engine/e;

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/roblox/client/o$f;->reconnect_button:I

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->ap()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/roblox/client/game/a;->as()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "rbx.appshell"

    const-string p3, "surfaceChanged()"

    .line 316
    invoke-static {p2, p3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->B()Z

    move-result p2

    if-nez p2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->o()F

    move-result p2

    .line 319
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/roblox/client/game/b;->a(Landroid/view/Surface;F)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "rbx.appshell"

    const-string v0, "surfaceCreated()"

    .line 304
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/roblox/client/game/a;->aD:Z

    .line 306
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->B()Z

    move-result p1

    if-nez p1, :cond_0

    .line 307
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/game/a;->au:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/b;->a(Landroid/view/Surface;)V

    .line 308
    iget-object p1, p0, Lcom/roblox/client/game/a;->at:Lcom/roblox/client/game/a$d;

    if-eqz p1, :cond_0

    .line 309
    invoke-interface {p1}, Lcom/roblox/client/game/a$d;->w()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "rbx.appshell"

    const-string v0, "surfaceDestroyed()"

    .line 325
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 326
    iput-boolean p1, p0, Lcom/roblox/client/game/a;->aD:Z

    .line 327
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/game/b;->b()V

    return-void
.end method
