.class public Lcom/roblox/client/game/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/f$a;,
        Lcom/roblox/client/game/f$b;
    }
.end annotation


# instance fields
.field public a:Lcom/roblox/client/purchase/google/b;

.field private b:Lcom/roblox/client/game/j;

.field private final c:Ljava/lang/String;

.field private d:Landroid/widget/FrameLayout;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/view/SurfaceView;

.field private i:I

.field private j:Lcom/roblox/client/game/m;

.field private k:Lcom/roblox/client/game/n;

.field private l:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method public constructor <init>(Lcom/roblox/client/game/ActivityGame;Lcom/roblox/client/game/j;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.game"

    .line 54
    iput-object v0, p0, Lcom/roblox/client/game/f;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/roblox/client/game/f;->e:J

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/roblox/client/game/f;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/roblox/client/game/f;->g:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/roblox/client/game/f;->i:I

    .line 71
    new-instance v0, Lcom/roblox/client/game/f$b;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/f$b;-><init>(Lcom/roblox/client/game/f;)V

    iput-object v0, p0, Lcom/roblox/client/game/f;->j:Lcom/roblox/client/game/m;

    .line 128
    iput-object p1, p0, Lcom/roblox/client/game/f;->l:Lcom/roblox/client/game/ActivityGame;

    .line 129
    iput-object p1, p0, Lcom/roblox/client/game/f;->k:Lcom/roblox/client/game/n;

    .line 130
    iput-object p2, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/f;)Landroid/view/SurfaceView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    return-object p0
.end method

.method private a(JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    const-string v1, "rbx.game"

    const-string v2, "startGame"

    .line 305
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, v0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 309
    new-instance v2, Lcom/roblox/engine/jni/model/a;

    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/game/f;->f()Lcom/roblox/engine/jni/model/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/roblox/engine/jni/model/a;-><init>(Lcom/roblox/engine/jni/model/c;)V

    .line 310
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v3

    iput-boolean v3, v2, Lcom/roblox/engine/jni/model/a;->isTablet:Z

    .line 316
    iget-object v3, v0, Lcom/roblox/client/game/f;->k:Lcom/roblox/client/game/n;

    invoke-interface {v3, v14, v15}, Lcom/roblox/client/game/n;->a(J)V

    .line 326
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/ad/c;->i()Z

    move-result v10

    .line 327
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move-object/from16 v15, p10

    .line 318
    invoke-static/range {v1 .. v15}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2StartGame(Landroid/view/Surface;Lcom/roblox/engine/jni/model/c;Lcom/roblox/engine/jni/model/b;JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;JILjava/lang/String;)I

    .line 332
    iget-object v1, v0, Lcom/roblox/client/game/f;->k:Lcom/roblox/client/game/n;

    move-wide/from16 v2, p1

    invoke-interface {v1, v2, v3}, Lcom/roblox/client/game/n;->b(J)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const-string v0, "rbx.game"

    const-string v1, "initSurfaceView: ..."

    .line 342
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget v0, Lcom/roblox/client/o$f;->surfaceview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 346
    iget-object p1, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 348
    iget-object p1, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/game/f;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/roblox/client/game/f;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private f()Lcom/roblox/engine/jni/model/c;
    .locals 3

    .line 289
    invoke-static {}, Lcom/roblox/engine/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {}, Lcom/roblox/engine/f;->a()Lcom/roblox/engine/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/engine/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlatformParams: assetFolderPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.game"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Lcom/roblox/engine/jni/model/c;

    invoke-direct {v1}, Lcom/roblox/engine/jni/model/c;-><init>()V

    .line 296
    iput-object v0, v1, Lcom/roblox/engine/jni/model/c;->assetFolderPath:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/ActivityGame;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.touchscreen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isTouchDevice:Z

    .line 298
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/ActivityGame;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isMouseDevice:Z

    .line 299
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/ActivityGame;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isKeyboardDevice:Z

    .line 300
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->d()F

    move-result v0

    iput v0, v1, Lcom/roblox/engine/jni/model/c;->dpiScale:F

    return-object v1
.end method

.method private g()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230NU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c0

    const/16 v1, 0x258

    .line 363
    iget-object v2, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x500

    .line 364
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v3, 0x320

    .line 365
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    iget-object v3, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v2, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 12

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurface() surfaceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/game/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    iget v0, p0, Lcom/roblox/client/game/f;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 407
    iput v3, p0, Lcom/roblox/client/game/f;->i:I

    .line 408
    iput-boolean v2, p0, Lcom/roblox/client/game/f;->g:Z

    .line 410
    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-wide v2, v0, Lcom/roblox/client/game/j;->c:J

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-wide v4, v0, Lcom/roblox/client/game/j;->b:J

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-object v6, v0, Lcom/roblox/client/game/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-object v7, v0, Lcom/roblox/client/game/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-wide v8, v0, Lcom/roblox/client/game/j;->f:J

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget v10, v0, Lcom/roblox/client/game/j;->a:I

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-object v11, v0, Lcom/roblox/client/game/j;->g:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/roblox/client/game/f;->a(JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_3

    .line 413
    iget-object v0, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 415
    iget-boolean v3, p0, Lcom/roblox/client/game/f;->g:Z

    if-eqz v3, :cond_2

    const-string v2, "updateSurface: nativeUpdateGraphics"

    .line 416
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->d()F

    move-result v1

    .line 418
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2UpdateSurfaceGame(Landroid/view/Surface;F)V

    goto :goto_0

    :cond_2
    const-string v3, "updateSurface: nativeStartUpGraphics"

    .line 421
    invoke-static {v1, v3}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-boolean v2, p0, Lcom/roblox/client/game/f;->g:Z

    .line 423
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->d()F

    move-result v1

    .line 424
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2ResumeGame(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string v0, "updateSurface() activity finishing ignore update"

    .line 402
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/game/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "onCreateView: No Settings with non-null savedInstanceState. No need to create view."

    .line 224
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/roblox/client/game/f;->k:Lcom/roblox/client/game/n;

    invoke-interface {p1}, Lcom/roblox/client/game/n;->m()V

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/f;->a:Lcom/roblox/client/purchase/google/b;

    .line 233
    sget v0, Lcom/roblox/client/o$g;->fragment_glview:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/roblox/client/game/f;->i:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    const-string p2, "onCreateView: The game is being recreated. Keep the current surface state."

    .line 242
    invoke-static {v1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_1
    iput v2, p0, Lcom/roblox/client/game/f;->i:I

    .line 247
    :goto_0
    sget p2, Lcom/roblox/client/o$f;->loading_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/roblox/client/game/f;->d:Landroid/widget/FrameLayout;

    .line 249
    invoke-direct {p0, p1}, Lcom/roblox/client/game/f;->a(Landroid/view/View;)V

    .line 252
    new-instance p2, Lcom/roblox/client/game/b$e;

    new-instance p3, Lcom/roblox/client/game/f$a;

    iget-object v0, p0, Lcom/roblox/client/game/f;->b:Lcom/roblox/client/game/j;

    iget-wide v0, v0, Lcom/roblox/client/game/j;->c:J

    invoke-direct {p3, p0, v0, v1}, Lcom/roblox/client/game/f$a;-><init>(Lcom/roblox/client/game/f;J)V

    invoke-direct {p2, p3}, Lcom/roblox/client/game/b$e;-><init>(Lcom/roblox/client/game/b$g;)V

    new-array p3, v2, [Ljava/lang/Void;

    .line 253
    invoke-virtual {p2, p3}, Lcom/roblox/client/game/b$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p1
.end method

.method public a()Lcom/roblox/client/game/ActivityGame;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/roblox/client/game/f;->l:Lcom/roblox/client/game/ActivityGame;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/roblox/client/game/f;->l:Lcom/roblox/client/game/ActivityGame;

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/ActivityGame;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 471
    iput-wide p1, p0, Lcom/roblox/client/game/f;->e:J

    .line 472
    iput-object p3, p0, Lcom/roblox/client/game/f;->f:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/roblox/client/game/f;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v3

    iget-object v6, p0, Lcom/roblox/client/game/f;->j:Lcom/roblox/client/game/m;

    move-object v1, p4

    move-object v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;)Z

    move-result p4

    const-string v0, "InGame"

    const-string v1, "GoogleStoreInitiate"

    if-nez p4, :cond_0

    .line 486
    new-instance p4, Lcom/roblox/client/game/f$1;

    invoke-direct {p4, p0}, Lcom/roblox/client/game/f$1;-><init>(Lcom/roblox/client/game/f;)V

    invoke-virtual {p0, p4}, Lcom/roblox/client/game/f;->a(Ljava/lang/Runnable;)V

    const/4 p4, 0x0

    .line 491
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/roblox/client/game/f;->a(ZJLjava/lang/String;)V

    const-string p1, "FailedPlayStoreNotSetUp"

    .line 493
    invoke-static {v1, v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Started"

    .line 495
    invoke-static {v1, v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 12

    .line 154
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v8

    .line 161
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RobloxSupport:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 164
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v4, v0

    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x1

    new-array v7, v9, [Lcom/roblox/client/ae/a/a;

    const/4 v10, 0x0

    new-instance v11, Lcom/roblox/client/ae/a/c;

    const/4 v2, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/ae/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v11, v7, v10

    invoke-static {v6, p1, v7}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 167
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 168
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x96

    const/16 v5, 0x64

    const/16 p1, 0x96

    const/16 v7, 0x64

    move-object v2, v8

    move-object v3, v6

    move v6, p1

    .line 170
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/b;->a(Landroid/view/View;IIII)V

    .line 171
    invoke-virtual {v8, v9}, Landroidx/appcompat/app/b;->setCanceledOnTouchOutside(Z)V

    .line 173
    :try_start_0
    invoke-virtual {v8}, Landroidx/appcompat/app/b;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/ActivityGame;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZJLjava/lang/String;)V
    .locals 8

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-Game purchase finished: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", productId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rbx.purchaseflow"

    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget v0, p0, Lcom/roblox/client/game/f;->i:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string p1, "FragmentGlView.inGamePurchaseFinished: Singleton is null or surface is not created."

    .line 503
    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_0
    iget-wide v4, p0, Lcom/roblox/client/game/f;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const-string p1, "FragmentGlView.inGamePurchaseFinished: playerPtr == 0."

    .line 509
    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native call. Success="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeInGamePurchaseFinished(ZJLjava/lang/String;)V

    const-string p1, ""

    .line 517
    iput-object p1, p0, Lcom/roblox/client/game/f;->f:Ljava/lang/String;

    .line 518
    iput-wide v6, p0, Lcom/roblox/client/game/f;->e:J

    return-void
.end method

.method public b()V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataModel: dataModel = GAME, surfaceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/game/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", graphicsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lcom/roblox/client/game/f;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/roblox/client/game/f;->g:Z

    .line 195
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2PauseGame()V

    .line 199
    :cond_0
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2LeaveGame()V

    const/4 v0, -0x1

    .line 200
    iput v0, p0, Lcom/roblox/client/game/f;->i:I

    return-void
.end method

.method public c()Landroid/view/SurfaceView;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/roblox/client/game/f;->h:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public d()F
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/ActivityGame;->o()F

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 338
    iget v0, p0, Lcom/roblox/client/game/f;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "rbx.game"

    const-string p2, "surfaceChanged: ..."

    .line 373
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0}, Lcom/roblox/client/game/f;->g()V

    .line 376
    invoke-static {}, Lcom/roblox/client/b;->au()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    iget-boolean p1, p0, Lcom/roblox/client/game/f;->g:Z

    if-eqz p1, :cond_1

    .line 382
    invoke-direct {p0}, Lcom/roblox/client/game/f;->h()V

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/game/f;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "rbx.game"

    const-string v0, "surfaceCreated: ..."

    .line 431
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string v0, "FGLV.surfaceCreated"

    .line 432
    invoke-static {p1, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceDestroyed: surfaceState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/roblox/client/game/f;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", graphicsStarted = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/roblox/client/game/f;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.game"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget p1, p0, Lcom/roblox/client/game/f;->i:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 443
    :cond_0
    iget-boolean p1, p0, Lcom/roblox/client/game/f;->g:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 444
    iput-boolean p1, p0, Lcom/roblox/client/game/f;->g:Z

    .line 445
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2PauseGame()V

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 449
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "surfaceDestroyed() activity finishing ignore task scheduler"

    .line 456
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const-string v0, "FGLV.surfaceDestroyed"

    .line 457
    invoke-static {p1, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
